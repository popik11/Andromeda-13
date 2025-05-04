
/**
 * Enables an admin to upload a new titlescreen image.
 */
ADMIN_VERB(admin_change_title_screen, R_FUN, "Титульный экран: Изменить", "Загрузите новое изображение титульного экрана.", ADMIN_CATEGORY_FUN)
	log_admin("[key_name(user)] изменяет титульный экран.")
	message_admins("[key_name_admin(user)] изменяет титульный экран.")

	switch(alert(usr, "Пожалуйста, выберите новый титульный экран.", "Титульный экран", "Изменить", "Сбросить", "Отмена"))
		if("Изменить")
			var/file = input(user) as icon|null
			if(!file)
				return
			SStitle.change_title_screen(file)
		if("Сбросить")
			SStitle.change_title_screen()
		if("Отмена")
			return

/**
 * Sets a titlescreen notice, a big red text on the main screen.
 */
ADMIN_VERB(change_title_screen_notice, R_FUN, "Титульный экран: Установить заметку", "Устанавливает уведомление на титульном экране - большой красный текст на главном экране.", ADMIN_CATEGORY_FUN)
	log_admin("[key_name(usr)] устанавливает уведомление на титульном экране.")
	message_admins("[key_name_admin(usr)] устанавливает уведомление на титульном экране.")

	var/new_notice = input(usr, "Введите уведомление, которое будет отображаться на титульном экране:", "Титульный экран Уведомление") as text|null
	SStitle.set_notice(new_notice)
	if(!new_notice)
		return
	for(var/mob/dead/new_player/new_player in GLOB.new_player_list)
		to_chat(new_player, span_boldannounce("ОБНОВЛЕНИЕ ТИТУЛЬНОГО УВЕДОМЛЕНИЯ: [new_notice]"))
		SEND_SOUND(new_player,  sound('modular_skyrat/modules/admin/sound/duckhonk.ogg'))

/**
 * Reloads the titlescreen if it is bugged for someone.
 */
/client/verb/fix_title_screen()
	set name = "Исправить экран лобби"
	set desc = "Лоббискрин сломался? Нажмите сюда."
	set category = "OOC"

	if(istype(mob, /mob/dead/new_player))
		var/mob/dead/new_player/new_player = mob
		new_player.show_title_screen()
	else
		winset(src, "title_browser", "is-disabled=true;is-visible=false")
		winset(src, "status_bar", "is-visible=true")

/**
 * An admin debug command that enables you to change the HTML on the go.
 */
ADMIN_VERB(change_title_screen_html, R_DEBUG, "Титульный экран: Установка HTML", "Меняйте HTML-экран лобби на ходу.", ADMIN_CATEGORY_FUN)
	log_admin("[key_name(user)] устанавливает HTML титульного экрана.")
	message_admins("[key_name_admin(user)] устанавливает HTML титульного экрана.")

	var/new_html = input(usr, "Пожалуйста, введите желаемый HTML (ВНИМАНИЕ: ВЫ БУДЕТЕ РАЗБИРАТЬСЯ)", "ОПАСНО: НАЗВАНИЕ HTML РЕДАКТИРОВАНИЕ") as message|null

	if(!new_html)
		return

	SStitle.title_html = new_html
	SStitle.show_title_screen()

	message_admins("[key_name_admin(user)] изменил HTML титульного экрана.")
