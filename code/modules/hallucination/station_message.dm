/datum/hallucination/station_message
	abstract_hallucination_parent = /datum/hallucination/station_message
	random_hallucination_weight = 1
	hallucination_tier = HALLUCINATION_TIER_RARE

/datum/hallucination/station_message/start()
	qdel(src) // To be implemented by subtypes, call parent for easy cleanup
	return TRUE

/datum/hallucination/station_message/blob_alert

/datum/hallucination/station_message/blob_alert/start()
	priority_announce("Подтверждена вспышка биологической опасности пятого уровня на борту [station_name()]. Весь персонал должен сдержать вспышку.", \
		"Оповещение о биологической угрозе", ANNOUNCER_OUTBREAK5, players = list(hallucinator))
	return ..()

/datum/hallucination/station_message/shuttle_dock

/datum/hallucination/station_message/shuttle_dock/start()
	priority_announce(
					text = "[SSshuttle.emergency] пристыковался к станции. У вас есть [DisplayTimeText(SSshuttle.emergency_dock_time)], чтобы подняться на борт аварийного шаттла.",
					title = "Прибытие шаттла",
					sound = ANNOUNCER_SHUTTLEDOCK,
					sender_override = "Диспетчерская Флота",
					players = list(hallucinator),
					color_override = "orange",
				)
	return ..()

/datum/hallucination/station_message/malf_ai

/datum/hallucination/station_message/malf_ai/start()
	if(!(locate(/mob/living/silicon/ai) in GLOB.silicon_mobs))
		return FALSE

	priority_announce("Во всех системах станции обнаружены враждебные объекты, пожалуйста, деактивируйте свой ИИ, чтобы предотвратить возможное повреждение его ядра.", \
		"Предупреждение об аномалии", ANNOUNCER_AIMALF, players = list(hallucinator))
	return ..()

/datum/hallucination/station_message/heretic
	/// This is gross and will probably easily be outdated in some time but c'est la vie.
	/// Maybe if someone datumizes heretic paths or something this can be improved
	var/static/list/ascension_bodies = list(
		list(
			"text" = "Бойтесь пламени, ибо Ашлорд, %FAKENAME%, вознесся! Пламя поглотит всех!",
			"sound" = 'sound/music/antag/heretic/ascend_blade.ogg',
		),
		list(
			"text" = "Мастер клинков, ученик чемпиона Торна, %FAKENAME% вознесся! Их сталь - это та сталь, которая разрежет реальность в серебряном мареве!",
			"sound" = 'sound/music/antag/heretic/ascend_blade.ogg',
		),
		list(
			"text" = "Вечно закручивающийся вихрь. Реальность развернулась. Вскинув руки, Владыка ночи, %FAKENAME%, вознесся! Бойтесь вечно крутящейся руки!",
			"sound" = 'sound/music/antag/heretic/ascend_flesh.ogg',
		),
		list(
			"text" = "Бойтесь разложения, ибо взошел Ударник Ржавчины, %FAKENAME%! Никто не спасется от коррозии!",
			"sound" = 'sound/music/antag/heretic/ascend_rust.ogg',
		),
		list(
			"text" = "Дворянин пустоты %FAKENAME% прибыл, шагая в вальсе, который завершает миры!",
			"sound" = 'sound/music/antag/heretic/ascend_void.ogg',
		)
	)

/datum/hallucination/station_message/heretic/start()
	// Unfortunately, this will not be synced if mass hallucinated
	var/mob/living/carbon/human/totally_real_heretic = random_non_sec_crewmember()
	if(!totally_real_heretic)
		return FALSE

	var/list/fake_ascension = pick(ascension_bodies)
	var/announcement_text = replacetext(fake_ascension["text"], "%FAKENAME%", totally_real_heretic.real_name)
	priority_announce(
		text = "[generate_heretic_text()] [announcement_text] [generate_heretic_text()]",
		title = "[generate_heretic_text()]",
		sound = fake_ascension["sound"],
		players = list(hallucinator),
		color_override = "pink",
	)
	return ..()

/datum/hallucination/station_message/cult_summon

/datum/hallucination/station_message/cult_summon/start()
	// Same, will not be synced if mass hallucinated
	var/mob/living/carbon/human/totally_real_cult_leader = random_non_sec_crewmember()
	if(!totally_real_cult_leader)
		return FALSE

	// Get a fake area that the summoning is happening in
	var/area/hallucinator_area = get_area(hallucinator)
	var/area/fake_summon_area_type = pick(GLOB.the_station_areas - hallucinator_area.type)
	var/area/fake_summon_area = GLOB.areas_by_type[fake_summon_area_type]

	priority_announce(
		text = "Фигуры эльдрического бога вызываются [totally_real_cult_leader.real_name] в [fake_summon_area] из неизвестного измерения. Сорвите ритуал любой ценой!",
		title = "[command_name()] Высшие Измерение",
		sound = 'sound/music/antag/bloodcult/bloodcult_scribe.ogg',
		has_important_message = TRUE,
		players = list(hallucinator),
	)
	return ..()

/datum/hallucination/station_message/meteors
	random_hallucination_weight = 2

/datum/hallucination/station_message/meteors/start()
	priority_announce("Обнаружены метеоры, идущие на столкновение со станцией.", "Предупреждение о метеоритах", ANNOUNCER_METEORS, players = list(hallucinator))
	return ..()

/datum/hallucination/station_message/supermatter_delam

/datum/hallucination/station_message/supermatter_delam/start()
	SEND_SOUND(hallucinator, 'sound/effects/magic/charge.ogg')
	to_chat(hallucinator, span_bolddanger("You feel reality distort for a moment..."))
	return ..()

/datum/hallucination/station_message/clock_cult_ark
	// Clock cult's long gone, but this stays for posterity.
	random_hallucination_weight = 0

/datum/hallucination/station_message/clock_cult_ark/start()
	hallucinator.playsound_local(hallucinator, 'sound/machines/clockcult/ark_deathrattle.ogg', 50, FALSE, pressure_affected = FALSE)
	hallucinator.playsound_local(hallucinator, 'sound/effects/clockcult_gateway_disrupted.ogg', 50, FALSE, pressure_affected = FALSE)
	addtimer(CALLBACK(src, PROC_REF(play_distant_explosion_sound)), 2.7 SECONDS)
	return TRUE // does not call parent to finish up the sound in a few seconds

/datum/hallucination/station_message/clock_cult_ark/proc/play_distant_explosion_sound()
	if(QDELETED(src))
		return

	hallucinator.playsound_local(get_turf(hallucinator), 'sound/effects/explosion/explosion_distant.ogg', 50, FALSE, pressure_affected = FALSE)
	qdel(src)
