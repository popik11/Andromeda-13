/datum/round_event_control/dark_matteor
	name = "Dark Matt-eor"
	typepath = /datum/round_event/dark_matteor
	weight = 0
	max_occurrences = 0
	category = EVENT_CATEGORY_SPACE
	description = "Throw a dark matt-eor somewhere near the station."
	admin_setup = list(/datum/event_admin_setup/warn_admin/dark_matteor)
	map_flags = EVENT_SPACE_ONLY

/datum/round_event/dark_matteor
	fakeable = FALSE //Already faked by meteors that miss. Please, god, please miss

/datum/round_event/dark_matteor/start()
	var/mob/living/target
	for(var/mob/living/potential_target as anything in GLOB.mob_living_list)
		if(!is_station_level(potential_target.z))
			continue
		var/turf/target_turf = get_turf(potential_target)
		if(isgroundlessturf(target_turf))
			continue
		target = potential_target
		break
	//if target was never chosen the target is null aka the matteor will act as spacedust (and can technically miss)
	spawn_meteor(list(/obj/effect/meteor/dark_matteor = 1), null, target, distance_from_edge = 10)

/datum/round_event/dark_matteor/announce(fake)
	priority_announce("Внимание. Чрезмерное вмешательство в работу метеорных спутников привлекло темный матт-эор. Сигнатура приближается к [GLOB.station_name]. Пожалуйста, приготовьтесь к столкновению.", "Предупреждение о метеоритах", 'sound/announcer/alarm/airraid.ogg')

/datum/event_admin_setup/warn_admin/dark_matteor
	warning_text = "Темные маттеоры порождают сингулярности. Раунд заканчивается, как только темный матт-эор попадает на станцию. Продолжать?"
	snitch_text = null //since this is not a conditional alert, there is nothing to snitch on. announcing a triggered event is enough.

/datum/event_admin_setup/warn_admin/dark_matteor/should_warn()
	return TRUE
