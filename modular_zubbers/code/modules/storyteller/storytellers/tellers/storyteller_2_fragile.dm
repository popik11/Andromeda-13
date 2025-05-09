/datum/storyteller/fragile
	name = "Fragile (Medium-Low Chaos)"
	desc = "Хрупкий» ограничит разрушительные, боевые и хаотичные события. \
	Порождает больше событий и позволяет вести больше боев, чем «Озноб», но по частоте остается ниже, чем «Дефолт Энди». Он также будет повторять события реже, чем Chill."
	welcome_text = "Обращайтесь осторожно!"

	event_repetition_multiplier = 0.5

	track_data = /datum/storyteller_data/tracks/fragile

	tag_multipliers = list(
		TAG_COMBAT = 0.5,
		TAG_DESTRUCTIVE = 0.1,
		TAG_CHAOTIC = 0.1
	)
	storyteller_type = STORYTELLER_TYPE_ALWAYS_AVAILABLE

/datum/storyteller_data/tracks/fragile
	threshold_mundane = 1200
	threshold_moderate = 1800
	threshold_major = 8000
	threshold_crewset = 3000
	threshold_ghostset = 8000
