/datum/storyteller/low
	name = "Низкий хаос"
	desc = "По сравнению с другими рассказчиками, «Низкий Хаос» будет светлым на события, особенно на те, которые связаны с боем, разрушением или хаосом. \
	Наименее суетливый рассказчик из всех, но при этом не лишенный некоторой остроты. Лучше всего подходит для раундов, ориентированных на RP, с небольшим количеством событий."
	welcome_text = "Если вы проголосуете за этого рассказчика на Ice Box, у вас нет оригинальности."

	track_data = /datum/storyteller_data/tracks/chill

	guarantees_roundstart_crewset = FALSE
	tag_multipliers = list(
		TAG_COMBAT = 0.3,
		TAG_DESTRUCTIVE = 0.3,
		TAG_CHAOTIC = 0.1,
		TAG_LOW = 1,
		TAG_MEDIUM = 0,
		TAG_HIGH = 0
	)
	antag_divisor = 32
	storyteller_type = STORYTELLER_TYPE_CALM
