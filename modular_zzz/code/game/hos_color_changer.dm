/obj/item/hos_color_changer
	name = "Brig Color Changer"
	desc = "Brig Color Changer."
	icon_state = "suspiciousphone"
	base_icon_state = "suspiciousphone"
	inhand_icon_state = "electronic"
	lefthand_file = 'icons/mob/inhands/items/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/devices_righthand.dmi'
	icon = 'icons/obj/antags/syndicate_tools.dmi'
	w_class = WEIGHT_CLASS_TINY

/obj/item/hos_color_changer/attack_self(mob/user)
	. = ..()
	user.visible_message(span_notice("[user] тыкается в [src]..."), \
						span_notice("Я начинаю тыкаться в [src]..."))

	if(tgui_alert(user, "Желаешь ли ты перекрасить Бриг в Красный?", "Какой СБшник ты сегодня?", list("Да", "Нет")) == "Да")
		for(var/obj/machinery/rnd/production/techfab/department/security/security_techfab as anything in SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/rnd/production/techfab/department/security))
			security_techfab.stripe_color = "#DE3A3A"
			security_techfab.update_icon()
		for(var/obj/machinery/door/airlock/security/security_doors as anything in SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/door/airlock/security))
			security_doors.icon = 'modular_skyrat/modules/aesthetics/airlock/icons/airlocks/station/security2.dmi'
			security_doors.update_icon()
		for(var/obj/effect/turf_decal/siding/red/security_decals1 as anything in typesof(/obj/effect/turf_decal/siding/red))
			security_decals1.color = "#DE3A3A"
			security_decals1.update_icon()
		for(var/obj/effect/turf_decal/trimline/red/security_decals2 as anything in typesof(/obj/effect/turf_decal/trimline/red))
			security_decals2.color = "#DE3A3A"
			security_decals2.update_icon()
		for(var/obj/structure/closet/secure_closet/security/sec/security_closet as anything in typesof(/obj/structure/closet/secure_closet/security/sec))
			security_closet.icon = 'icons/obj/storage/closet.dmi'
		priority_announce("Кто-то перекрасил Бриг в Красный!", "Red Brig", 'sound/announcer/announcement/announce.ogg', "Central Command")

	qdel(src)
