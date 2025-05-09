/// Turns the user into a puzzgrid
/datum/smite/puzzgrid
	name = "Головоломка грид (С?)"

	var/timer
	var/gib_on_loss

/datum/smite/puzzgrid/configure(client/user)
	var/timer = input(user, "Сколько времени должно быть у других людей, чтобы собрить нарушителя? 0 (пустая строчка) дает бесконечное время.", "Головоломка", 0) as num | null
	if (isnull(timer))
		return FALSE

	var/gib_on_loss = tgui_alert(user, "Что должно произойти с ними, когда они проиграют?", "Головоломка", list("Смерть", "Новый пазл")) == "Смерть"

	src.gib_on_loss = gib_on_loss
	src.timer = timer == 0 ? null : (timer * 1 SECONDS)

	return TRUE

/datum/smite/puzzgrid/effect(client/user, mob/living/target)
	. = ..()

	var/datum/puzzgrid/puzzgrid = create_random_puzzgrid()
	if (isnull(puzzgrid))
		to_chat(user, span_warning("Не удалось создать паззлгрид! Может, конфиг не настроен?"))
		return

	var/obj/structure/puzzgrid_effect/puzzgrid_effect = new(target.loc, target, puzzgrid, timer, gib_on_loss)
	target.forceMove(puzzgrid_effect)
	puzzgrid_effect.visible_message(span_warning("[target] внезапно превратилась в чудовищно сложную головоломку!"))

	playsound(puzzgrid_effect, 'sound/effects/magic.ogg', 70)

/obj/structure/puzzgrid_effect
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/effects/effects.dmi'
	icon_state = "shield2"

	var/mob/living/victim
	var/timer
	var/gib_on_loss

/obj/structure/puzzgrid_effect/Initialize(mapload, mob/living/victim, datum/puzzgrid/puzzgrid, timer, gib_on_loss)
	. = ..()

	if (isnull(victim))
		return

	src.victim = victim
	src.timer = timer
	src.gib_on_loss = gib_on_loss

	name = "[victim] дьявольское проклятие"

	victim.add_traits(list(TRAIT_HANDS_BLOCKED, TRAIT_IMMOBILIZED), "[type]")

	add_puzzgrid_component(puzzgrid)

/obj/structure/puzzgrid_effect/Destroy()
	QDEL_NULL(victim)
	return ..()

/obj/structure/puzzgrid_effect/proc/add_puzzgrid_component(datum/puzzgrid/puzzgrid)
	AddComponent( \
		/datum/component/puzzgrid, \
		puzzgrid = puzzgrid, \
		timer = timer, \
		on_victory_callback = CALLBACK(src, PROC_REF(on_victory)), \
		on_fail_callback = CALLBACK(src, gib_on_loss ? PROC_REF(loss_gib) : PROC_REF(loss_restart)), \
	)

/obj/structure/puzzgrid_effect/proc/on_victory()
	victim.forceMove(loc)
	victim.Paralyze(5 SECONDS)
	victim.visible_message(
		span_notice("[victim] освобождена из своей дьявольской тюрьмы!"),
		span_notice("Вы освобождены из своей чудовищной тюрьмы!"),
	)

	victim.remove_traits(list(TRAIT_HANDS_BLOCKED, TRAIT_IMMOBILIZED), "[type]")

	victim = null

	qdel(src)

/obj/structure/puzzgrid_effect/proc/loss_gib()
	victim.forceMove(loc)
	victim.visible_message(
		span_bolddanger("Вы не смогли освободить [victim] из дьявольской тюрьмы, оставив от нее лишь кашицу!"),
		span_bolddanger("Ваши товарищи не смогли освободить вас из вашей дьявольской тюрьмы, оставив лишь кашицу!"),
	)
	victim.gib(DROP_ALL_REMAINS)
	victim = null

	qdel(src)

/obj/structure/puzzgrid_effect/proc/loss_restart()
	var/datum/puzzgrid/puzzgrid = create_random_puzzgrid()
	if (isnull(puzzgrid))
		victim.forceMove(loc)
		victim.Paralyze(5 SECONDS)
		victim.visible_message(span_bolddanger("Несмотря на полный провал головоломки, благодаря невероятному везению [victim], все равно удается выбраться!"))
		victim.remove_traits(list(TRAIT_HANDS_BLOCKED, TRAIT_IMMOBILIZED), "[type]")
		qdel(src)
		victim = null
		return

	visible_message(span_danger("Сложнейшая головоломка превращается в другую, не менее сложную!"))

	// Defer until after the fail proc finishes, since that will qdel the component.
	addtimer(CALLBACK(src, PROC_REF(add_puzzgrid_component), puzzgrid), 0)
