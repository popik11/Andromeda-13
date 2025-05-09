/// Throw an immovable rod at the target
/// Бросьте в цель неподвижный стержень.
/datum/smite/rod
	name = "Неподвижный стержень"
	var/force_looping = FALSE

/datum/smite/rod/configure(client/user)
	var/loop_input = tgui_alert(usr,"Долететь до цели не ломая всё на пути?", "Луппи МакЛупфейс", list("Да", "Нет"))

	force_looping = (loop_input == "Да")

/datum/smite/rod/effect(client/user, mob/living/target)
	. = ..()
	var/turf/target_turf = get_turf(target)
	var/startside = pick(GLOB.cardinals)
	var/turf/start_turf = spaceDebrisStartLoc(startside, target_turf.z)
	var/turf/end_turf = spaceDebrisFinishLoc(startside, target_turf.z)
	new /obj/effect/immovablerod(start_turf, end_turf, target, force_looping)
