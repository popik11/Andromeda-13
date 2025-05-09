/// Gives the target bad luck, optionally permanently
/datum/smite/bad_luck
	name = "Плохая удача"

	/// Should the target know they've received bad luck?
	var/silent

	/// Is this permanent?
	var/incidents

/datum/smite/bad_luck/configure(client/user)
	silent = tgui_alert(user, "Хотите ли вы применить предзнаменование с уведомлением игрока?", "Уведомить игрока?", list("Уведомить", "Безмолвие")) == "Безмолвие"
	incidents = tgui_input_number(user, "В течение скольких инцидентов будет длиться предзнаменование? 0 (или пустая строка) означает постоянство.", "Продолжительность?", default = 0, round_value = 1)
	if(incidents == 0)
		incidents = INFINITY

/datum/smite/bad_luck/effect(client/user, mob/living/target)
	. = ..()
	//if permanent, replace any existing omen
	if(incidents == INFINITY)
		var/existing_component = target.GetComponent(/datum/component/omen)
		qdel(existing_component)
	target.AddComponent(/datum/component/omen/smite, incidents_left = incidents)
	if(silent)
		return
	to_chat(target, span_warning("У вас возникает плохое предчувствие..."))
	if(incidents == INFINITY)
		to_chat(target, span_warning("<b>Очень</b> плохое предчувствие... Как будто злые божественные силы наблюдают за вами..."))
