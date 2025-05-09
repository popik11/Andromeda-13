/// Strikes the target with a lightning bolt
/datum/smite/curse_of_babel
	name = "Вавилонская башня"
	/// How long should the effect last
	var/duration

/datum/smite/curse_of_babel/configure(client/user)
	duration = tgui_input_number(user, "Сколько минут вы хотите, чтобы длился этот эффект?", "Время", 1, 60, -1, round_value = FALSE) MINUTES

/datum/smite/curse_of_babel/effect(client/user, mob/living/carbon/target)
	. = ..()
	if(!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return

	target.apply_status_effect(/datum/status_effect/tower_of_babel, duration)
	to_chat(target, span_userdanger("Боги покарали вас за ваши грехи!"), confidential = TRUE)
