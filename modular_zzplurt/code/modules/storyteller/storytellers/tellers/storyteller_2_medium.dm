/datum/storyteller/medium
	name = "Sueta (Medium)"
	desc = "Средний Хаос - это рассказчик по умолчанию и точка сравнения для всех остальных рассказчиков. \
	События происходят чаще, чем в «Низком хаосе», но реже, чем в «Высоком хаосе». Лучше всего подходит для среднего, разнообразного опыта."
	welcome_text = "Если бы я измельчил тебя в мясорубке..."
	antag_divisor = 8

	tag_multipliers = list(
		TAG_LOW = 1,
		TAG_MEDIUM = 1,
		TAG_HIGH = 0
		)
	storyteller_type = STORYTELLER_TYPE_ALWAYS_AVAILABLE
