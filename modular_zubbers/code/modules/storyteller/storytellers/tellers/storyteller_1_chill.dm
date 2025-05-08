/datum/storyteller/chill
	name = "Chill (Low Chaos)"
	desc = "По сравнению с другими сказочниками, «Озноб» будет мало освещать события, особенно те, которые связаны с боем, разрушением или хаосом. \
	Наименее суетливый из всех рассказчиков, но при этом не лишенный некоторой остроты. Лучше всего подходит для раундов, ориентированных на RP, с небольшим количеством событий."
	welcome_text = "Если вы проголосуете за этого сказочника на Ice Box, у вас нет оригинальности."

	track_data = /datum/storyteller_data/tracks/chill

	guarantees_roundstart_crewset = FALSE
	tag_multipliers = list(
		TAG_COMBAT = 0.3,
		TAG_DESTRUCTIVE = 0.3,
		TAG_CHAOTIC = 0.1
	)
	antag_divisor = 32
	storyteller_type = STORYTELLER_TYPE_CALM

/datum/storyteller_data/tracks/chill
	threshold_mundane = 1800
	threshold_moderate = 2700
	threshold_major = 16000
	threshold_crewset = 3600
	threshold_ghostset = 9000
