/datum/storyteller/high
	name = "ROBASTER"
	desc = "High Chaos будет стараться создавать наиболее боевые события, стараясь избегать чисто разрушительных. \
	Более боевые и частые события, чем по умолчанию, но, в отличие от клоуна, старается не создавать адский сдвиг."
	welcome_text = "Добро пожаловать в «Геймерский рассказчик». Теперь на 50 % больше помощи!"

	track_data = /datum/storyteller_data/tracks/gamer

	tag_multipliers = list(
		TAG_COMBAT = 1.5,
		TAG_DESTRUCTIVE = 0.7,
		TAG_CHAOTIC = 1.3,
		TAG_LOW = 1,
		TAG_MEDIUM = 1,
		TAG_HIGH = 1
	)

	antag_divisor = 5
	storyteller_type = STORYTELLER_TYPE_INTENSE
