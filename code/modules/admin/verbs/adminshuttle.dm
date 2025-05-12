ADMIN_VERB(change_shuttle_events, R_ADMIN|R_FUN, "Изменеть Событие На Шаттле", "Измените события на шаттле.", ADMIN_CATEGORY_SHUTTLE)
	//At least for now, just letting admins modify the emergency shuttle is fine
	var/obj/docking_port/mobile/port = SSshuttle.emergency

	if(!port)
		to_chat(user, span_admin("Ой, не могу найти спасательный шаттл!"))

	var/list/options = list("Очистить"="Очистить")

	//Grab the active events so we know which ones we can Add or Remove
	var/list/active = list()
	for(var/datum/shuttle_event/event in port.event_list)
		active[event.type] = event

	for(var/datum/shuttle_event/event as anything in subtypesof(/datum/shuttle_event))
		options[((event in active) ? "(Удалить)" : "(Добавить)") + initial(event.name)] = event

	//Throw up an ugly menu with the shuttle events and the options to add or remove them, or clear them all
	var/result = input(user, "Выберите событие для добавления/удаления", "События На Шаттле") as null|anything in sort_list(options)

	if(result == "Очистить")
		port.event_list.Cut()
		message_admins("Администратор [key_name_admin(user)] очистил события шаттле: [port]")
	else if(options[result])
		var/typepath = options[result]
		if(typepath in active)
			port.event_list.Remove(active[options[result]])
			message_admins("[key_name_admin(user)] удалил '[active[result]]' с [port].")
		else
			message_admins("[key_name_admin(user)] добавил '[typepath]' на [port].")
			port.add_shuttle_event(typepath)

ADMIN_VERB(call_shuttle, R_ADMIN, "Вызвать Шаттл", "Принудительный вызов шаттла с дополнительными модификаторами.", ADMIN_CATEGORY_SHUTTLE)
	if(EMERGENCY_AT_LEAST_DOCKED)
		return

	var/confirm = tgui_alert(user, "Вы уверены?", "Подтвердите", list("Да", "Да (Не отзывать)", "Нет"))
	switch(confirm)
		if(null, "Нет")
			return
		if("Да (Не отзывать)")
			SSshuttle.admin_emergency_no_recall = TRUE
			SSshuttle.emergency.mode = SHUTTLE_IDLE

	SSshuttle.emergency.request()
	BLACKBOX_LOG_ADMIN_VERB("Вызвать Шаттл")
	log_admin("Администратор [key_name(user)] вызвал аварийный шаттл.")
	message_admins(span_adminnotice("Администратор [key_name_admin(user)] вызвал аварийный шаттл[confirm == "Да (Не отзывать)" ? " (non-recallable)" : ""]."))

ADMIN_VERB(cancel_shuttle, R_ADMIN, "Отменить Шаттл", "Отозвать шаттл, независимо от обстоятельств.", ADMIN_CATEGORY_SHUTTLE)
	if(EMERGENCY_AT_LEAST_DOCKED)
		return

	if(tgui_alert(user, "Вы уверены?", "Подтвердите", list("Да", "Нет")) != "Да")
		return
	SSshuttle.admin_emergency_no_recall = FALSE
	SSshuttle.emergency.cancel()
	BLACKBOX_LOG_ADMIN_VERB("Отменить Шаттл")
	log_admin("Администратор [key_name(user)] отозвал аварийный шаттл.")
	message_admins(span_adminnotice("Администратор [key_name_admin(user)] отозвал аварийный шаттл."))

ADMIN_VERB(disable_shuttle, R_ADMIN, "Отключить Шаттл", "Этим ублюдкам не выбраться.", ADMIN_CATEGORY_SHUTTLE)
	if(SSshuttle.emergency.mode == SHUTTLE_DISABLED)
		to_chat(user, span_warning("Ошибка, шаттл уже отключен."))
		return

	if(tgui_alert(user, "Вы уверены?", "Подтвердите", list("Да", "Нет")) != "Да")
		return

	message_admins(span_adminnotice("Администратор [key_name_admin(user)] отключил аварийный шаттл."))

	SSshuttle.last_mode = SSshuttle.emergency.mode
	SSshuttle.last_call_time = SSshuttle.emergency.timeLeft(1)
	SSshuttle.admin_emergency_no_recall = TRUE
	SSshuttle.emergency.setTimer(0)
	SSshuttle.emergency.mode = SHUTTLE_DISABLED
	priority_announce(
		text = "Аварийный сбой восходящей линии связи шаттла, шаттл отключен до дальнейших распоряжений.",
		title = "Сбой восходящей линии связи",
		sound = 'sound/announcer/announcement/announce_dig.ogg',
		sender_override = "Диспетчерская Флота",
		color_override = "grey",
	)

ADMIN_VERB(enable_shuttle, R_ADMIN, "Включить Шаттл", "Эти ублюдки выходят на свободу.", ADMIN_CATEGORY_SHUTTLE)
	if(SSshuttle.emergency.mode != SHUTTLE_DISABLED)
		to_chat(user, span_warning("Ошибка, шаттл не отключен."))
		return

	if(tgui_alert(user, "Вы уверены?", "Подтвердите", list("Да", "Нет")) != "Да")
		return

	message_admins(span_adminnotice("Администратор [key_name_admin(user)] включил аварийный шаттл."))
	SSshuttle.admin_emergency_no_recall = FALSE
	SSshuttle.emergency_no_recall = FALSE
	if(SSshuttle.last_mode == SHUTTLE_DISABLED) //If everything goes to shit, fix it.
		SSshuttle.last_mode = SHUTTLE_IDLE

	SSshuttle.emergency.mode = SSshuttle.last_mode
	if(SSshuttle.last_call_time < 10 SECONDS && SSshuttle.last_mode != SHUTTLE_IDLE)
		SSshuttle.last_call_time = 10 SECONDS //Make sure no insta departures.
	SSshuttle.emergency.setTimer(SSshuttle.last_call_time)
	priority_announce(
		text = "Аварийная связь с шаттлом восстановлена, шаттл включен.",
		title = "Восстановление соединения",
		sound = 'sound/announcer/announcement/announce_dig.ogg',
		sender_override = "Диспетчерская Флота",
		color_override = "green",
	)

ADMIN_VERB(hostile_environment, R_ADMIN, "Враждебная Обстановка", "Выведите шаттл из строя, естественно.", ADMIN_CATEGORY_SHUTTLE)
	switch(tgui_alert(user, "Выберите вариант", "Менеджер по работе с враждебной средой", list("Включить", "Отключить", "Очистить все")))
		if("Включить")
			if (SSshuttle.hostile_environments["Admin"] == TRUE)
				to_chat(user, span_warning("Ошибка, враждебное окружение уже включено."))
			else
				message_admins(span_adminnotice("Администратор [key_name_admin(user)] включил враждебное окружение"))
				SSshuttle.registerHostileEnvironment("Admin")
		if("Отключить")
			if (!SSshuttle.hostile_environments["Admin"])
				to_chat(user, span_warning("Ошибка, не найдено враждебное окружение не включено."))
			else
				message_admins(span_adminnotice("Администратор [key_name_admin(user)] отключил враждебное окружение"))
				SSshuttle.clearHostileEnvironment("Admin")
		if("Очистить все")
			message_admins(span_adminnotice("Администратор [key_name_admin(user)] очистил всё враждебное окружение"))
			SSshuttle.hostile_environments.Cut()
			SSshuttle.checkHostileEnvironment()

ADMIN_VERB(shuttle_panel, R_ADMIN, "Управление Шаттлами", "Открывает пользовательский интерфейс манипулятора шаттла.", ADMIN_CATEGORY_SHUTTLE)
	SSshuttle.ui_interact(user.mob)

/obj/docking_port/mobile/proc/admin_fly_shuttle(mob/user)
	var/list/options = list()

	for(var/port in SSshuttle.stationary_docking_ports)
		if (istype(port, /obj/docking_port/stationary/transit))
			continue  // please don't do this
		var/obj/docking_port/stationary/S = port
		if (canDock(S) == SHUTTLE_CAN_DOCK)
			options[S.name || S.shuttle_id] = S

	options += "--------"
	options += "Бесконечный Транзит"
	options += "Удалить Шаттл"
	options += "Навстречу Закату (удалить и сделать зеленый текст 'побег')"

	var/selection = tgui_input_list(user, "Выберите место назначения [name || shuttle_id]:", "Полет на Шаттле", options)
	if(isnull(selection))
		return

	switch(selection)
		if("Бесконечный Транзит")
			destination = null
			mode = SHUTTLE_IGNITING
			setTimer(ignitionTime)

		if("Удалить Шаттл")
			if(tgui_alert(user, "Удалить шаттл [name || shuttle_id]?", "Удалить Шаттл", list("Отмена", "Серьезно!")) != "Серьезно!")
				return
			jumpToNullSpace()

		if("Навстречу Закату (удалить и сделать зеленый текст 'побег')")
			if(tgui_alert(user, "Действительно удаляете [name || shuttle_id] и зелёный текст после побега?", "Удалить Шаттл", list("Отмена", "Серьезно!")) != "Серьезно!")
				return
			intoTheSunset()

		else
			if(options[selection])
				request(options[selection])

/obj/docking_port/mobile/emergency/admin_fly_shuttle(mob/user)
	return  // use the existing verbs for this

/obj/docking_port/mobile/arrivals/admin_fly_shuttle(mob/user)
	switch(tgui_alert(user, "Хотите ли вы лететь на шаттле один раз или изменить его направление?", "Полет на Шаттле", list("Полёт", "Перенаправить", "Отмена")))
		if("Отмена")
			return
		if("Полёт")
			return ..()

	var/list/options = list()

	for(var/port in SSshuttle.stationary_docking_ports)
		if (istype(port, /obj/docking_port/stationary/transit))
			continue  // please don't do this
		var/obj/docking_port/stationary/S = port
		if (canDock(S) == SHUTTLE_CAN_DOCK)
			options[S.name || S.shuttle_id] = S

	var/selection = tgui_input_list(user, "Место назначения новых прибытий", "Полет на Шаттле", options)
	if(isnull(selection))
		return
	target_dock = options[selection]
	if(!QDELETED(target_dock))
		destination = target_dock
