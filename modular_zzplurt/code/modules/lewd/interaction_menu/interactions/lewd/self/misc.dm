/// ADD ANDROMEDA-13 (@rewokin): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/clothesplosion
	name = "Снять ВСЮ одежду"
	description = "Долой трусы, свободу письке!"
	usage = INTERACTION_SELF
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_HUMAN
	)
	message = list(
		"срывает с себя одежду!",
		"вырывается из одежды!",
		"резко снимает с себя одежду!"
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	user_arousal = 0

/datum/interaction/lewd/clothesplosion/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!istype(user))
		return
	user.clothing_burst(FALSE)
