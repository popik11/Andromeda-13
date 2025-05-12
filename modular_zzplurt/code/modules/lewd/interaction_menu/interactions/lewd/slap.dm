/// ADD ANDROMEDA-13 (@ms_kira): Перевод, малое дополнение ЕРП контента.
/datum/interaction/lewd/slap
	name = "Шлепнуть по попе"
	description = "Шлепни кого-нибудь по заднице. (Это заводит, Чуть приятно, Это очень больно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_BUTT = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"Шлепает %TARGET% прямо по заднице.",
		"Игривисто шлепает %TARGET% прямо по упругой попеньке.",
		"Дарит %TARGET% смачный шлепок по попе.",
		"Врезает по попе %TARGET% как следует.",
		"Нещадно отвешивает шлепок по заднице %TARGET%.",
		"Дает смачный шлепок по заднице %TARGET%.",
		"Приземляет жгучий шлепок по заднице %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/slap.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0.2
	target_pain = 7
	user_arousal = 3
	target_arousal = 5

/datum/interaction/lewd/slap/act(mob/living/user, mob/living/target)
	var/original_pleasure = target_pleasure
	if(HAS_TRAIT(target, TRAIT_MASOCHISM))
		target_pleasure = 2
	. = ..()
	target_pleasure = original_pleasure
