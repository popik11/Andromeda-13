/datum/storyteller/bomb
	name = "Bomb (Medium-High Chaos)"
	desc = "Бомба постарается сделать более разрушительными события. Для тех случаев, когда у вас будет полная команда инженеров. Или нет, потому что они все в криокамере."
	welcome_text = "Кто-то подложил нам бомбу."
	track_data = /datum/storyteller_data/tracks/bomb

	tag_multipliers = list(
		TAG_DESTRUCTIVE = 1.5
	)
	population_min = 25
	antag_divisor = 10
	storyteller_type = STORYTELLER_TYPE_INTENSE

/datum/storyteller_data/tracks/bomb
	threshold_mundane = 1800
	threshold_moderate = 1400
	threshold_major = 5500
