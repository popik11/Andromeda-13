/**
 * skill associated with the fishing feature. It modifies the fishing minigame difficulty
 * and is gained each time one is completed.
 */
/datum/skill/fishing
	name = "Рыбалка"
	title = "Рыбак"
	desc = "Как пусто и одиноко вам на этой бесплодной Земле."
	modifiers = list(SKILL_VALUE_MODIFIER = list(1, 0, -1, -3, -5, -7, -10))
	skill_item_path = /obj/item/clothing/head/soft/fishing_hat

/datum/skill/fishing/New()
	. = ..()
	levelUpMessages[SKILL_LEVEL_NOVICE] = span_nicegreen("Я начинаю понимать, что такое [name] на самом деле! Я могу с первого взгляда определить размер и вес рыбы.")
	levelUpMessages[SKILL_LEVEL_APPRENTICE] = span_nicegreen("Я становлюсь немного лучше в [name]! Я могу определить, голодна ли рыба, умирает ли она и т.д.")
	levelUpMessages[SKILL_LEVEL_JOURNEYMAN] = span_nicegreen("Мне кажется, что я уже достаточно хорошо разбираюсь в [name]! Я могу сказать, какую рыбу я могу поймать в любом месте рыбалки.")
	levelUpMessages[SKILL_LEVEL_MASTER] = span_nicegreen("Я начал по-настоящему понимать удивительную глубину, скрывающуюся за [name]. Как мастер [title], я могу угадать, что я поймаю сейчас!")

/datum/skill/fishing/level_gained(datum/mind/mind, new_level, old_level, silent)
	. = ..()
	if(new_level >= SKILL_LEVEL_NOVICE && old_level < SKILL_LEVEL_NOVICE)
		ADD_TRAIT(mind, TRAIT_EXAMINE_FISH, SKILL_TRAIT)
	if(new_level >= SKILL_LEVEL_APPRENTICE && old_level < SKILL_LEVEL_APPRENTICE)
		ADD_TRAIT(mind, TRAIT_EXAMINE_DEEPER_FISH, SKILL_TRAIT)
	if(new_level >= SKILL_LEVEL_JOURNEYMAN && old_level < SKILL_LEVEL_JOURNEYMAN)
		ADD_TRAIT(mind, TRAIT_EXAMINE_FISHING_SPOT, SKILL_TRAIT)
	if(new_level >= SKILL_LEVEL_MASTER && old_level < SKILL_LEVEL_MASTER)
		ADD_TRAIT(mind, TRAIT_REVEAL_FISH, SKILL_TRAIT)

/datum/skill/fishing/level_lost(datum/mind/mind, new_level, old_level, silent)
	. = ..()
	if(old_level >= SKILL_LEVEL_MASTER && new_level < SKILL_LEVEL_MASTER)
		REMOVE_TRAIT(mind, TRAIT_REVEAL_FISH, SKILL_TRAIT)
	if(old_level >= SKILL_LEVEL_JOURNEYMAN && new_level < SKILL_LEVEL_JOURNEYMAN)
		REMOVE_TRAIT(mind, TRAIT_EXAMINE_FISHING_SPOT, SKILL_TRAIT)
	if(old_level >= SKILL_LEVEL_APPRENTICE && new_level < SKILL_LEVEL_APPRENTICE)
		REMOVE_TRAIT(mind, TRAIT_EXAMINE_DEEPER_FISH, SKILL_TRAIT)
	if(old_level >= SKILL_LEVEL_NOVICE && new_level < SKILL_LEVEL_NOVICE)
		REMOVE_TRAIT(mind, TRAIT_EXAMINE_FISH, SKILL_TRAIT)
