/datum/interaction/lewd/grope_ass	/// ADD ANDROMEDA-13 (@Мисс Кира): Перевод, дополнение ЕРП контента.
	name = "Потрогать Задницу"
	description = "Потрогай чью-нибудь задницу."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	message = list(
		"Смачно лапает %TARGET% за задницу",
		"Сжимает булочки %TARGET% в своих руках",
		"Ласково поглаживает попку %TARGET%",
		"Хватает %TARGET% за попку и сжимает её"
	)
	user_messages = list(
		"Вы чувствуете мягкую попку %TARGET% в своих руках",
		"Упругость попы %TARGET% удобно ощущается в вашей ладони",
		"Вы сжимаете пухлый опрятный зад %TARGET%r"
	)
	target_messages = list(
		"Вы чувствуете, как рука %USER% ощупывает вашу попку",
		"Вы чувствуете как пальчики %USER% сжимают вашу попку",
		"Тепло ладони %USER% легко ощущается на вашей заднице"
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3
