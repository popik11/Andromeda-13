/datum/round_event_control/aurora_caelus
	name = "Аврора Кейлус - сияние космоса"
	typepath = /datum/round_event/aurora_caelus
	max_occurrences = 1
	weight = 1
	earliest_start = 5 MINUTES
	category = EVENT_CATEGORY_FRIENDLY
	description = "Через отдельные окна можно увидеть красочную экспозицию."

/datum/round_event_control/aurora_caelus/can_spawn_event(players, allow_magic = FALSE)
	if(!SSmapping.empty_space)
		return FALSE
	return ..()

/datum/round_event/aurora_caelus
	announce_when = 1
	start_when = 21
	end_when = 80

/datum/round_event/aurora_caelus/announce(fake)
	priority_announce("[station_name()]: К вашей станции приближается безвредное облако ионов, которое исчерпает свою энергию, ударив по корпусу. Нанотрасен разрешил всем сотрудникам сделать небольшой перерыв, чтобы отдохнуть и понаблюдать за этим редким событием. В это время свет звезд будет ярким, но мягким, переходящим от спокойного зеленого к голубому цвету. Все сотрудники, которые захотят увидеть эти огни своими глазами, могут пройти в ближайшую к ним зону с обзором на космос. Мы надеемся, что вы получите удовольствие от этих огней.",
	sound = SSstation.announcer.event_sounds[ANNOUNCER_AURORA_CAELUS] || 'sound/announcer/notice/notice2.ogg', // SPLURT EDIT - ORIGINAL: sound = 'sound/announcer/notice/notice2.ogg',
	sender_override = "Отдел метеорологии Нанотразен")
	if (fake)
		return
	for(var/V in GLOB.player_list)
		var/mob/M = V
		var/pref_volume = M.client.prefs.read_preference(/datum/preference/numeric/volume/sound_midi)
		if(pref_volume > 0 && is_station_level(M.z))
			M.playsound_local(M, 'sound/ambience/aurora_caelus/aurora_caelus.ogg', 20 * (pref_volume/100), FALSE, pressure_affected = FALSE)
	fade_space(fade_in = TRUE)
	fade_kitchen(fade_in = TRUE)

/datum/round_event/aurora_caelus/start()
	if(!prob(1) && !check_holidays(APRIL_FOOLS))
		return

	var/list/human_blacklist = list()
	for(var/area/station/service/kitchen/affected_area in GLOB.areas)
		var/obj/machinery/oven/roast_ruiner = locate() in affected_area
		if(roast_ruiner)
			roast_ruiner.balloon_alert_to_viewers("oh egads!")
			var/turf/ruined_roast = get_turf(roast_ruiner)
			ruined_roast.atmos_spawn_air("[GAS_PLASMA]=100;[TURF_TEMPERATURE(1000)]")
			message_admins("Aurora Caelus event caused an oven to ignite at [ADMIN_VERBOSEJMP(ruined_roast)].")
			log_game("Aurora Caelus event caused an oven to ignite at [loc_name(ruined_roast)].")
			announce_to_ghosts(roast_ruiner)
			for(var/mob/living/carbon/human/seymour in viewers(roast_ruiner, 7))
				if (seymour in human_blacklist)
					continue
				human_blacklist += seymour
				if(seymour.mind && istype(seymour.mind.assigned_role, /datum/job/cook))
					seymour.say("My roast is ruined!!!", forced = "ruined roast")
					seymour.emote("scream")

/datum/round_event/aurora_caelus/tick()
	if(activeFor % 8 != 0)
		return
	var/aurora_color = hsl_gradient((activeFor - start_when) / (end_when - start_when), 0, "#A2FF80", 1, "#A2FFEE")
	set_starlight(aurora_color)

	for(var/area/station/service/kitchen/affected_area in GLOB.areas)
		for(var/turf/open/kitchen_floor in affected_area.get_turfs_from_all_zlevels())
			kitchen_floor.set_light(l_color = aurora_color)

/datum/round_event/aurora_caelus/end()
	fade_space()
	fade_kitchen()
	priority_announce("Аврора Кейлус завершает свое существование. Звездная обстановка постепенно возвращается к нормальной. По окончании этого процесса, пожалуйста, вернитесь на свое рабочее место и продолжайте работу в обычном режиме. Приятной смены, [station_name()] и спасибо, что смотрите вместе с нами.",
	sound = 'sound/announcer/notice/notice2.ogg',
	sender_override = "Отдел метеорологии Нанотразен")

/datum/round_event/aurora_caelus/proc/fade_space(fade_in = FALSE)
	set waitfor = FALSE
	// iterate all glass tiles
	var/start_color = hsl_gradient(1, 0, "#A2FF80", 1, "#A2FFEE")
	var/start_range = GLOB.starlight_range * 1.75
	var/start_power = GLOB.starlight_power * 0.6
	var/end_color = GLOB.base_starlight_color
	var/end_range = GLOB.starlight_range
	var/end_power = GLOB.starlight_power
	if(fade_in)
		end_color = hsl_gradient(0, 0, "#A2FF80", 1, "#A2FFEE")
		end_range = start_range
		end_power = start_power
		start_color = GLOB.base_starlight_color
		start_range = GLOB.starlight_range
		start_power = GLOB.starlight_power

	for(var/i in 1 to 5)
		var/walked_color = hsl_gradient(i/5, 0, start_color, 1, end_color)
		var/walked_range = LERP(start_range, end_range, i/5)
		var/walked_power = LERP(start_power, end_power, i/5)
		set_starlight(walked_color, walked_range, walked_power)
		sleep(8 SECONDS)
	set_starlight(end_color, end_range, end_power)

/datum/round_event/aurora_caelus/proc/fade_kitchen(fade_in = FALSE)
	set waitfor = FALSE
	var/start_color = hsl_gradient(1, 0, "#A2FF80", 1, "#A2FFEE")
	var/start_range = 1
	var/start_power = 0.75
	var/end_color = COLOR_BLACK
	var/end_range = 0.5
	var/end_power = 0
	if(fade_in)
		end_color = hsl_gradient(0, 0, "#A2FF80", 1, "#A2FFEE")
		end_range = start_range
		end_power = start_power
		start_color = COLOR_BLACK
		start_range = 0.5
		start_power = 0

	for(var/i in 1 to 5)
		var/walked_color = hsl_gradient(i/5, 0, start_color, 1, end_color)
		var/walked_range = LERP(start_range, end_range, i/5)
		var/walked_power = LERP(start_power, end_power, i/5)
		for(var/area/station/service/kitchen/affected_area in GLOB.areas)
			for(var/turf/open/kitchen_floor in affected_area.get_turfs_from_all_zlevels())
				kitchen_floor.set_light(walked_range, walked_power, walked_color)
		sleep(8 SECONDS)
	for(var/area/station/service/kitchen/affected_area in GLOB.areas)
		for(var/turf/open/kitchen_floor in affected_area.get_turfs_from_all_zlevels())
			kitchen_floor.set_light(end_range, end_power, end_color)
