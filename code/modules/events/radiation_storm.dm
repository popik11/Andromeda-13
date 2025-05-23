/datum/round_event_control/radiation_storm
	name = "Radiation Storm"
	typepath = /datum/round_event/radiation_storm
	max_occurrences = 1
	category = EVENT_CATEGORY_SPACE
	description = "Radiation storm affects the station, forcing the crew to escape to maintenance."
	min_wizard_trigger_potency = 3
	max_wizard_trigger_potency = 7

/datum/round_event/radiation_storm


/datum/round_event/radiation_storm/setup()
	start_when = 3
	end_when = start_when + 1
	announce_when = 1

/datum/round_event/radiation_storm/announce(fake)
	priority_announce("Вблизи станции обнаружен высокий уровень радиации. Немедленно покиньте рабочие места и найдите укрытие.", "Предупреждение об аномалии", ANNOUNCER_RADIATION)
	//sound not longer matches the text, but an audible warning is probably good

/datum/round_event/radiation_storm/start()
	SSweather.run_weather(/datum/weather/rad_storm)
