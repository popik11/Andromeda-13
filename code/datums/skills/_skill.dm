GLOBAL_LIST_INIT(skill_types, subtypesof(/datum/skill))

/datum/skill
	var/name = "Навыки"
	var/title = "Робастер"
	var/desc = "искусство делать вещи"
	///Dictionary of modifier type - list of modifiers (indexed by level). 7 entries in each list for all 7 skill levels.
	var/modifiers = list(SKILL_SPEED_MODIFIER = list(1, 1, 1, 1, 1, 1, 1)) //Dictionary of modifier type - list of modifiers (indexed by level). 7 entries in each list for all 7 skill levels.
	///List Path pointing to the skill item reward that will appear when a user finishes leveling up a skill
	var/skill_item_path
	///List associating different messages that appear on level up with different levels
	var/list/levelUpMessages = list()
	///List associating different messages that appear on level up with different levels
	var/list/levelDownMessages = list()

/datum/skill/proc/get_skill_modifier(modifier, level)
	return modifiers[modifier][level] //Levels range from 1 (None) to 7 (Legendary)
/**
 * new: sets up some lists.
 *
 *Can't happen in the datum's definition because these lists are not constant expressions
 */
/datum/skill/New()
	. = ..()
	levelUpMessages = list(span_nicegreen("Что это за [name]? Сообщите администратору, если увидите это сообщение."), //This first index shouldn't ever really be used
	span_nicegreen("Я начинаю понимать, кто такой [name] на самом деле!"),
	span_nicegreen("Я становлюсь немного лучше в [name]!"),
	span_nicegreen("Я становлюсь намного лучше в [name]!"),
	span_nicegreen("Мне кажется, что я уже достаточно хорошо разбираюсь в [name]!"),
	span_nicegreen("После долгих тренировок я начал по-настоящему понимать все тонкости и удивительную глубину [name]. Теперь я считаю себя мастером [title]."),
	span_nicegreen("Благодаря невероятной целеустремленности и усилиям я достиг пика своих [name] способностей. Наконец-то я могу считать себя легендарным [title]!") )
	levelDownMessages = list(span_nicegreen("Я как-то совсем перестал понимать [name]. Пожалуйста, сообщите администратору, если увидите это."),
	span_nicegreen("Я начинаю забывать, что такое [name]. Мне нужно больше практики..."),
	span_nicegreen("У меня немного ухудшается [name]. Мне нужно продолжать тренироваться, чтобы стать лучше..."),
	span_nicegreen("У меня немного ухудшается [name]..."),
	span_nicegreen("Я теряю свою [name] опыт ...."),
	span_nicegreen("Я чувствую, что теряю мастерство в [name]."),
	span_nicegreen("Я чувствую, что мои легендарные навыки [name] ухудшились. Чтобы восстановить утраченные навыки, мне понадобятся более интенсивные тренировки.") )

/**
 * level_gained: Gives skill levelup messages to the user
 *
 * Only fires if the xp gain isn't silent, so only really useful for messages.
 * Arguments:
 * * mind - The mind that you'll want to send messages
 * * new_level - The newly gained level. Can check the actual level to give different messages at different levels, see defines in skills.dm
 * * old_level - Similar to the above, but the level you had before levelling up.
 * * silent - Silences the announcement if TRUE
 */
/datum/skill/proc/level_gained(datum/mind/mind, new_level, old_level, silent)
	if(silent)
		return
	to_chat(mind.current, levelUpMessages[new_level]) //new_level will be a value from 1 to 6, so we get appropriate message from the 6-element levelUpMessages list
/**
 * level_lost: See level_gained, same idea but fires on skill level-down
 */
/datum/skill/proc/level_lost(datum/mind/mind, new_level, old_level, silent)
	if(silent)
		return
	to_chat(mind.current, levelDownMessages[old_level]) //old_level will be a value from 1 to 6, so we get appropriate message from the 6-element levelUpMessages list

/**
 * try_skill_reward: Checks to see if a user is eligable for a tangible reward for reaching a certain skill level
 *
 * Currently gives the user a special cloak when they reach a legendary level at any given skill
 * Arguments:
 * * mind - The mind that you'll want to send messages and rewards to
 * * new_level - The current level of the user. Used to check if it meets the requirements for a reward
 */
/datum/skill/proc/try_skill_reward(datum/mind/mind, new_level)
	if (new_level != SKILL_LEVEL_LEGENDARY)
		return
	if (!ispath(skill_item_path))
		to_chat(mind.current, span_nicegreen("Мой легендарный навык [name] весьма впечатляет, хотя, похоже, у Профессиональной ассоциации [title] нет никаких символов статуса, чтобы отметить мои способности. Надо бы сообщить в Центком об этой пародии, может, они что-нибудь предпримут."))
		return
	if (LAZYFIND(mind.skills_rewarded, src.type))
		to_chat(mind.current, span_nicegreen("Похоже, Профессиональная [title] ассоциация не хочет присылать мне очередной символ статуса."))
		return
	podspawn(list(
		"target" = get_turf(mind.current),
		"style" = /datum/pod_style/advanced,
		"spawn" = skill_item_path,
		"delays" = list(POD_TRANSIT = 150, POD_FALLING = 4, POD_OPENING = 30, POD_LEAVING = 30)
	))
	to_chat(mind.current, span_nicegreen("Мой легендарный навык привлек внимание Профессиональной [title] ассоциации. Похоже, они посылают мне символ статуса в память о моих способностях."))
	LAZYADD(mind.skills_rewarded, src.type)
