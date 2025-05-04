/datum/interaction/lewd/finger	/// ADD ANDROMEDA-13 (@Мисс Кира): Перевод, дополнение ЕРП контента.
	name = "Фингеринг Киски"
	description = "Засунь свои пальцы в чью-нибудь Кису."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"Проводит пальцем по Кисе %TARGET%.",
		"Плавно проходит пальцем по целке %TARGET%.",
		"Вздрачивает пальцем клитор %TARGET%.",
		"Нежно наглаживает вагину %TARGET%.",
		"Обводит двумя пальчиками клитор %TARGET% и гладит его вращающимися движениями.",
		"Погладив клитор, проходится двумя пальцами вдоль киски %TARGET%.",
		"Сдавливает клитор %TARGET% пальцами.",
		"Круговыми движениями вздрачивает кису %TARGET%.",
		"Наглаживает с небольшим усилием вагину %TARGET%.",
		"Входит пальцем в влагалище %TARGET% протискиваясь во-внутрь.",
		"Поглаживая влагалище изнутри, протискивает второй палец во-внутрь киски %TARGET%.",
		"Настойчиво вздрачивает киску %TARGET% толкаясь двумя пальцами внутри.",
		"Раздвигает половые губы киски %TARGET% вызывая легкие подрагивания.",
		"Отодвинув половую губу киски %TARGET% играется пальцем с целкой.",
		"Фингерит %TARGET% прямо в пизду.",
		"Неаккуратно ковыряется пальцем в пизде %TARGET%.",
		"Вздрачивает целку %TARGET% крючковым захватом пальцев",
		"Проталкивает два пальца как можно глубже в пизду %TARGET%",
		"Мягко шлепнув пизду %TARGET% вонзает в неё пальчики, приступая к фингерингу",
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 4
	target_arousal = 6
	target_pain = 0

/datum/interaction/lewd/finger/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		interaction_modifier_flags |= INTERACTION_OVERRIDE_FLUID_TRANSFER
		message = list(
			"Трахает пальчиком киску %TARGET% над [liquid_container]",
			"Вздрачивает крючковым захватом киску %TARGET% прямо над [liquid_container]",
			"Агрессивно наглаживает киску %TARGET% придерживая под [liquid_container]"
		)
	. = ..()
	message = original_messages
	interaction_modifier_flags &= ~INTERACTION_OVERRIDE_FLUID_TRANSFER

/datum/interaction/lewd/finger/post_climax(mob/living/cumming, mob/living/came_in, position)
	if(interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER)
		var/obj/item/liquid_container

		var/obj/item/cached_item = came_in.get_active_held_item()
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item
		else
			cached_item = came_in.pulling
			if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
				liquid_container = cached_item

		if(liquid_container)
			var/obj/item/organ/genital/vagina/vagina = cumming.get_organ_slot(ORGAN_SLOT_VAGINA)
			if(vagina)
				vagina.transfer_internal_fluid(liquid_container.reagents, vagina.internal_fluid_count)

	. = ..()

/datum/interaction/lewd/fingerass
	name = "Фингеринг Попки"
	description = "Зафингирите чью-нибудь попку."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	message = list(
		"Обводит пальцем анальчик %TARGET%",
		"Двумя пальцами разводит края анальчика %TARGET% в стороны",
		"Вводит палец в анальное колечко %TARGET%",
		"Фингерит анальное колечко %TARGET%",
		"Грубовато растягивает анальный проход %TARGET% проталкивающимися движениями пальцев",
		"Крючковым образом играется с анальным проходом %TARGET%",
		"Резкими движениями углубляется пальцами в попку %TARGET%",
		"Вдалблиывается пальцами в анальный проходик %TARGET%"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 2
	user_arousal = 3
	target_arousal = 5
	target_pain = 2

