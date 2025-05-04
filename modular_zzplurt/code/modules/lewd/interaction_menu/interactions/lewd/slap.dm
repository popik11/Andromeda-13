/datum/interaction/lewd/slap ///Translate by MissKira
	name = "Шлепнуть по Попе"
	description = "Шлепни кого-нибудь по заднице."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_BUTT = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"Шлепает %TARGET% прямо по заднице!",
		"Нещадно отвешивает шлепок по заднице %TARGET%!",
		"Дает смачный шлепок по заднице %TARGET%!",
		"Приземляет жгучий шлепок по заднице %TARGET%!"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/slap.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	target_pain = 10
	user_arousal = 2
	target_arousal = 0

/datum/interaction/lewd/slap/act(mob/living/user, mob/living/target)
	var/original_pleasure = target_pleasure
	if(HAS_TRAIT(target, TRAIT_MASOCHISM))
		target_pleasure = 2
	. = ..()
	target_pleasure = original_pleasure
