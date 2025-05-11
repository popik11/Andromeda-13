// Действия языком

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, среднее дополнение ЕРП контента.
/datum/interaction/lewd/rimjob
	name = "Полизать зад (Римминг)"
	description = "Полижи чей-нибудь зад, не будь пуськой. (Это заводит, Немного приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	message = list(
		"Лижет задницу %TARGET%.",
		"С пристрастием вылизывает попку %TARGET%.",
		"Грамотно и надежно полизывает анальчик %TARGET%.",
		"Проходится своим языком по попке %TARGET%.",
		"Полизывает попеньку %TARGET% словно это леденец.",
		"Глубоко погружает язык в попку %TARGET%.",
		"Зарывается языком в попку %TARGET%.",
		"Прижимает язык к попке %TARGET%.",
		"Страстно вылизывает попку %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 3
	target_arousal = 6

/datum/interaction/lewd/lickfeet
	name = "Полизать ножку"
	description = "Полижи чью-нибудь ножку, ты же не пуська. (Это только заводит)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_FEET)
	message = list(
		"Лижет босые ноги %TARGET%.",
		"Вылизывает ножки %TARGET%.",
		"Страстно облизывает ножки %TARGET%.",
		"Чувственно проходится языком по ножке %TARGET%.",
		"Аккуратно и дразняще лижет ножку %TARGET%.",
		"Проводит языком по подошвам %TARGET%.",
		"Лижет пальцы ног %TARGET%.",
		"Пробует на вкус босые ноги %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/lickfeet/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/shoes = target.get_item_by_slot(ITEM_SLOT_FEET)

	if(shoes)
		message = list(
			"Лижет %TARGET% [shoes.name].",
			"Проходит язычком по подошвам %TARGET% [shoes.name].",
			"Проходится язычком по обуви %TARGET% [shoes.name].",
			"Пробует на вкус обувь %TARGET% [shoes.name]."
		)
	. = ..()
	message = original_messages

/datum/interaction/lewd/lick_nuts
	name = "Лизать яйца"
	description = "Полижи чьи-нибудь Яйца, будь смелее. (Это заводит, Немного приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_TESTICLES = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	message = list(
		"Лижет яйца %TARGET%.",
		"Посасывает яички %TARGET% в процессе вылизывания.",
		"Брежно проходится язычком по яйцам %TARGET%.",
		"Агрессивно сосет и вылизывает яички %TARGET%.",
		"Сосет яички %TARGET%.",
		"Лижет язычком яйца %TARGET%.",
		"Приклонно лижет яйца %TARGET% своим языком."
	)
	user_messages = list(
		"Вы чувствуете яйца %TARGET% на своем языке.",
		"Вкус яйц %TARGET% заполняет ваш рот.",
		"Вы заботливо уделяете внимание яйцам %TARGET%."
	)
	target_messages = list(
		"Язык %USER% работает над вашими яйцами.",
		"Вы чувствуете горячий рот %USER% на своих яйцам.",
		"Тепло языка %USER% заставляет ваши яйца покалывать."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj1.ogg',
		'modular_zzplurt/sound/interactions/bj2.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/bj4.ogg',
		'modular_zzplurt/sound/interactions/bj5.ogg',
		'modular_zzplurt/sound/interactions/bj6.ogg',
		'modular_zzplurt/sound/interactions/bj7.ogg',
		'modular_zzplurt/sound/interactions/bj8.ogg',
		'modular_zzplurt/sound/interactions/bj9.ogg',
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj11.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 3
	target_arousal = 5

//-// -Rewokin_comment //-//
// Слизывать пот..

// /datum/interaction/lewd/lick_sweat
//	name = "Lick Sweat"
//	description = "Lick their sweat."
//	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
//	message = list(
//		"licks the sweat off %TARGET%'s skin",
//		"tastes %TARGET%'s salty sweat",
//		"runs their tongue along %TARGET%'s sweaty body",
//		"savors the taste of %TARGET%'s perspiration"
//	)
//	user_messages = list(
//		"You taste %TARGET%'s salty sweat",
//		"The tang of %TARGET%'s sweat fills your mouth",
//		"You savor the salty taste of %TARGET%'s skin"
//	)
//	target_messages = list(
//		"You feel %USER%'s tongue licking your sweat",
//		"%USER%'s wet tongue slides across your sweaty skin",
//		"The warmth of %USER%'s mouth tingles against your damp skin"
//	)
//	sound_possible = list(
//		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
//	)
//	sound_range = 1
//	sound_use = TRUE
//	user_pleasure = 0
//	target_pleasure = 0
//	user_arousal = 3
//	target_arousal = 3
