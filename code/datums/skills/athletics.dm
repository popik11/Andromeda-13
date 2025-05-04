/datum/skill/athletics
	name = "Атлетика"
	title = "Босс качалки"
	desc = "Хватит себя жалеть! Билли смотрит на тебя с небес и ждёт, когда ты станешь боссом качалки."
	// The skill value modifier effects the max duration that is possible for /datum/status_effect/exercised; The rands modifier determines block probability and crit probability while boxing against boxers
	modifiers = list(
		SKILL_VALUE_MODIFIER = list(
			1 MINUTES,
			1.5 MINUTES,
			2 MINUTES,
			2.5 MINUTES,
			3 MINUTES,
			3.5 MINUTES,
			5 MINUTES
		),
		SKILL_RANDS_MODIFIER = list(
			0,
			5,
			10,
			15,
			20,
			30,
			50
		)
	)

	skill_item_path = /obj/item/clothing/gloves/boxing/golden

/datum/skill/athletics/New()
	. = ..()
	levelUpMessages[SKILL_LEVEL_NOVICE] = span_nicegreen("Я только начинаю свой путь к [name]! Думаю, я должен уметь определять других людей, которые работают над улучшением своего тела, по внешнему виду.")

/datum/skill/athletics/level_gained(datum/mind/mind, new_level, old_level, silent)
	. = ..()
	if(new_level >= SKILL_LEVEL_NOVICE && old_level < SKILL_LEVEL_NOVICE)
		ADD_TRAIT(mind, TRAIT_EXAMINE_FITNESS, SKILL_TRAIT)

/datum/skill/athletics/level_lost(datum/mind/mind, new_level, old_level, silent)
	. = ..()
	if(old_level >= SKILL_LEVEL_NOVICE && new_level < SKILL_LEVEL_NOVICE)
		REMOVE_TRAIT(mind, TRAIT_EXAMINE_FITNESS, SKILL_TRAIT)
