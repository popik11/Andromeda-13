/datum/mind
	var/datum/opposing_force/opposing_force

/datum/mind/Destroy()
	QDEL_NULL(opposing_force)
	return ..()

/mob/verb/opposing_force()
	set name = "Противостоящая сила"
	set category = "OOC"
	set desc = "Ознакомьтесь с панелью противоборствующих сил или запросите ее."
	// Mind checks
	if(!mind)
		var/fail_message = "У вас нет разума!"
		if(isobserver(src))
			fail_message += " Чтобы получить его, вы должны быть в текущем раунде в определенный момент."
		to_chat(src, span_warning(fail_message))
		return
	if(mind?.assigned_role.title == ROLE_GHOST_CAFE)
		to_chat(src, span_warning("Чтобы запросить опфор, вы должны находиться в текущем раунде."))
		return
	if(is_banned_from(ckey, BAN_ANTAGONIST))
		to_chat(src, span_warning("У вас блокировка антагониста!"))
		return

	if(is_banned_from(ckey, BAN_OPFOR))
		to_chat(src, span_warning("У вас блокировка OPFOR!"))
		return

	if(!mind.opposing_force)
		var/datum/opposing_force/opposing_force = new(mind)
		mind.opposing_force = opposing_force
		SSopposing_force.new_opfor(opposing_force)
	mind.opposing_force.ui_interact(usr)
