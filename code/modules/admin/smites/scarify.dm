/// Gives the target fake scars
/datum/smite/scarify
	name = "Раскритиковать"

/datum/smite/scarify/effect(client/user, mob/living/target)
	. = ..()
	if(!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return
	var/mob/living/carbon/dude = target
	dude.generate_fake_scars(rand(1, 4))
	to_chat(dude, span_warning("Вы чувствуете, как ваше тело становится изможденным и измученным..."))
