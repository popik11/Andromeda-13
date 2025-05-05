// Работа ртом

/// ADD ANDROMEDA-13 (@rewokin): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/oral_vagina
	name = "Отлизать киску"
	description = "Давай, маленький брейнротик, прояви свой язык в более полезном русле."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"зарывается лицом в киску %TARGET%.",
		"ласкает мокрую киску %TARGET%.",
		"работает язычком с киской %TARGET%.",
		"kneels down between %TARGET%.",
		"обхватывает ноги %TARGET% раздвигая их." ,
		"погружает свое лицо между бедер %TARGET%."
	)
	user_messages = list(
		"Вы чувствуете теплую влагу %TARGET% на своем лице.",
		"Возбуждающий влажный запах %TARGET% наполняет ваши чувства.",
		"Вы проникаете языком глубже в киску %TARGET%."
	)
	target_messages = list(
		"Язык %USER% ласкает вашу киску.",
		"Вы чувствуете горячее дыхание %USER% между своих ножек.",
		"От тепла рта %USER% по вашей спине пробегают мурашки."
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
	target_pleasure = 5
	user_arousal = 3
	target_arousal = 7

/datum/interaction/lewd/oral_vagina/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds

/datum/interaction/lewd/oral_penis
	name = "Отсосать член"
	description = "Давай, сделай соси-соси за 5$."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"берет член %TARGET% в рот.",
		"обхватывает губами член %TARGET%.",
		"опускается на колени между ног %TARGET%.",
		"обхватывает ноги %TARGET%, целуя кончик его члена.",
		"причмокивает член %TARGET% и ласкает язычком."
	)
	user_messages = list(
		"Вы чувствуете, как член %TARGET% пульсирует у вас во рту.",
		"Вы работаете язычком с членом %TARGET%.",
		"Вы ласкаете губами член %TARGET%.",
		"Вы берете член %TARGET% глубже в горло."
	)
	target_messages = list(
		"Язык %USER%' извивается вокруг вашего члена.",
		"Вы чувствуете, как горячий рот %USER% обхватывает член.",
		"Тепло язычка и рта %USER% заставляет вас подёргиваться."
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
	target_pleasure = 5
	user_arousal = 3
	target_arousal = 7

/datum/interaction/lewd/oral_penis/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds

/datum/interaction/lewd/oral_penis/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!ishuman(target))
		return
	if(prob((target.dna.features["sexual_potency"] * 10) + 15))
		user.adjustOxyLoss(3)
		target.adjust_arousal(10)
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
