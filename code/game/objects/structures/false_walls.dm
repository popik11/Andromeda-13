/*
 * False Walls
 */
/obj/structure/falsewall
	name = "стена"
	desc = "Огромный кусок металла, служивший для разделения помещений."
	anchored = TRUE
	icon = 'icons/turf/walls/wall.dmi'
	icon_state = "wall"
	plane = WALL_PLANE
	layer = LOW_OBJ_LAYER
	density = TRUE
	opacity = 1
	max_integrity = 100

	canSmoothWith = list(
	/turf/closed/wall,
	/turf/closed/wall/r_wall,
	/obj/structure/falsewall,
	/obj/structure/falsewall/brass,
	/obj/structure/falsewall/reinforced,
	/turf/closed/wall/rust,
	/turf/closed/wall/r_wall/rust,
	/turf/closed/wall/clockwork,
	/turf/closed/indestructible/wall)
	smooth = SMOOTH_TRUE
	can_be_unanchored = FALSE
	CanAtmosPass = ATMOS_PASS_DENSITY
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	rad_insulation = RAD_MEDIUM_INSULATION
	var/mineral = /obj/item/stack/sheet/metal
	var/mineral_amount = 2
	var/walltype = /turf/closed/wall
	var/girder_type = /obj/structure/girder/displaced
	var/opening = FALSE

/obj/structure/falsewall/Initialize(mapload)
	. = ..()
	air_update_turf(TRUE)

/obj/structure/falsewall/ratvar_act()
	new /obj/structure/falsewall/brass(loc)
	qdel(src)

/obj/structure/falsewall/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	if(opening)
		return
	. = ..()
	if(.)
		return

	opening = TRUE
	update_icon()
	if(!density)
		var/srcturf = get_turf(src)
		for(var/mob/living/obstacle in srcturf) //Stop people from using this as a shield
			opening = FALSE
			return
	addtimer(CALLBACK(src, TYPE_PROC_REF(/obj/structure/falsewall, toggle_open)), 5)

/obj/structure/falsewall/proc/toggle_open()
	if(!QDELETED(src))
		density = !density
		set_opacity(density)
		opening = FALSE
		update_icon()
		air_update_turf(TRUE)

/obj/structure/falsewall/update_icon_state()//Calling icon_update will refresh the smoothwalls if it's closed, otherwise it will make sure the icon is correct if it's open
	if(opening)
		if(density)
			icon_state = "fwall_opening"
			smooth = SMOOTH_FALSE
			clear_smooth_overlays()
		else
			icon_state = "fwall_closing"
	else
		if(density)
			icon_state = initial(icon_state)
			smooth = SMOOTH_TRUE
			queue_smooth(src)
		else
			icon_state = "fwall_open"

/obj/structure/falsewall/proc/ChangeToWall(delete = 1)
	var/turf/T = get_turf(src)
	T.PlaceOnTop(walltype)
	if(delete)
		qdel(src)
	return T

/obj/structure/falsewall/attackby(obj/item/W, mob/user, params)
	if(opening)
		to_chat(user, "<span class='warning'>You must wait until the door has stopped moving!</span>")
		return

	if(W.tool_behaviour == TOOL_SCREWDRIVER)
		if(density)
			var/turf/T = get_turf(src)
			if(T.density)
				to_chat(user, "<span class='warning'>[src] is blocked!</span>")
				return
			if(!isfloorturf(T))
				to_chat(user, "<span class='warning'>[src] bolts must be tightened on the floor!</span>")
				return
			user.visible_message("<span class='notice'>[user] tightens some bolts on the wall.</span>", "<span class='notice'>You tighten the bolts on the wall.</span>")
			ChangeToWall()
		else
			to_chat(user, "<span class='warning'>You can't reach, close it first!</span>")

	else if(W.tool_behaviour == TOOL_WELDER || istype(W, /obj/item/gun/energy/plasmacutter))
		if(W.use_tool(src, user, 0, volume=50))
			dismantle(user, TRUE)
	else if(istype(W, /obj/item/pickaxe/drill/jackhammer))
		W.play_tool_sound(src)
		dismantle(user, TRUE)
	else
		return ..()

/obj/structure/falsewall/proc/dismantle(mob/user, disassembled=TRUE, obj/item/tool = null)
	user.visible_message("[user] dismantles the false wall.", "<span class='notice'>You dismantle the false wall.</span>")
	if(tool)
		tool.play_tool_sound(src, 100)
	else
		playsound(src, 'sound/items/welder.ogg', 100, 1)
	deconstruct(disassembled)

/obj/structure/falsewall/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(disassembled)
			new girder_type(loc)
		if(mineral_amount)
			for(var/i in 1 to mineral_amount)
				new mineral(loc)
	qdel(src)

/obj/structure/falsewall/get_dumping_location(obj/item/storage/source,mob/user)
	return null

/obj/structure/falsewall/examine_status(mob/user) //So you can't detect falsewalls by examine.
	to_chat(user, "<span class='notice'>The outer plating is <b>welded</b> firmly in place.</span>")
	return null

/*
 * False R-Walls
 */

/obj/structure/falsewall/reinforced
	name = "армированная стена"
	desc = "Огромный кусок армированного металла, используемый для разделения помещений."
	icon = 'icons/turf/walls/reinforced_wall.dmi'
	icon_state = "r_wall"
	walltype = /turf/closed/wall/r_wall
	mineral = /obj/item/stack/sheet/plasteel

/obj/structure/falsewall/reinforced/examine_status(mob/user)
	to_chat(user, "<span class='notice'>The outer <b>grille</b> is fully intact.</span>")
	return null

/obj/structure/falsewall/reinforced/attackby(obj/item/tool, mob/user)
	..()
	if(tool.tool_behaviour == TOOL_WIRECUTTER)
		dismantle(user, TRUE, tool)

/*
 * Uranium Falsewalls
 */

/obj/structure/falsewall/uranium
	name = "урановая стена"
	desc = "Это стена светится и фонит, плохая инженерная задумка.."
	icon = 'icons/turf/walls/uranium_wall.dmi'
	icon_state = "uranium"
	mineral = /obj/item/stack/sheet/mineral/uranium
	walltype = /turf/closed/wall/mineral/uranium
	var/active = null
	var/last_event = 0
	canSmoothWith = list(/obj/structure/falsewall/uranium, /turf/closed/wall/mineral/uranium)

/obj/structure/falsewall/uranium/attackby(obj/item/W, mob/user, params)
	radiate()
	return ..()

/obj/structure/falsewall/uranium/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	radiate()
	. = ..()

/obj/structure/falsewall/uranium/proc/radiate()
	if(!active)
		if(world.time > last_event+15)
			active = 1
			radiation_pulse(src, 150)
			for(var/turf/closed/wall/mineral/uranium/T in orange(1,src))
				T.radiate()
			last_event = world.time
			active = null
			return
	return
/*
 * Other misc falsewall types
 */

/obj/structure/falsewall/gold
	name = "золотая стена"
	desc = "Это конечно по блату, но если карго узнает куда пропало золото.."
	icon = 'icons/turf/walls/gold_wall.dmi'
	icon_state = "gold"
	mineral = /obj/item/stack/sheet/mineral/gold
	walltype = /turf/closed/wall/mineral/gold
	canSmoothWith = list(/obj/structure/falsewall/gold, /turf/closed/wall/mineral/gold)

/obj/structure/falsewall/silver
	name = "серебренная стена"
	desc = "Аристократы, гляньте, в отражении стены можно увидеть бюджетные потери станции."
	icon = 'icons/turf/walls/silver_wall.dmi'
	icon_state = "silver"
	mineral = /obj/item/stack/sheet/mineral/silver
	walltype = /turf/closed/wall/mineral/silver
	canSmoothWith = list(/obj/structure/falsewall/silver, /turf/closed/wall/mineral/silver)

/obj/structure/falsewall/diamond
	name = "алмазная стена"
	desc = "Самое не рациональное использование ресурсов. Ты ещё дом из алмазов построй."
	icon = 'icons/turf/walls/diamond_wall.dmi'
	icon_state = "diamond"
	mineral = /obj/item/stack/sheet/mineral/diamond
	walltype = /turf/closed/wall/mineral/diamond
	canSmoothWith = list(/obj/structure/falsewall/diamond, /turf/closed/wall/mineral/diamond)
	max_integrity = 800

/obj/structure/falsewall/plasma
	name = "плазменная стена"
	desc = "Стена с плазменным покрытием. Это определенно плохая идея."
	icon = 'icons/turf/walls/plasma_wall.dmi'
	icon_state = "plasma"
	mineral = /obj/item/stack/sheet/mineral/plasma
	walltype = /turf/closed/wall/mineral/plasma
	canSmoothWith = list(/obj/structure/falsewall/plasma, /turf/closed/wall/mineral/plasma)

/obj/structure/falsewall/plasma/attackby(obj/item/W, mob/user, params)
	if(W.get_temperature() > 300)
		var/turf/T = get_turf(src)
		message_admins("Plasma falsewall ignited by [ADMIN_LOOKUPFLW(user)] in [ADMIN_VERBOSEJMP(T)]")
		log_admin("Plasma falsewall ignited by [key_name(user)] in [AREACOORD(T)]")
		burnbabyburn()
	else
		return ..()

/obj/structure/falsewall/plasma/proc/burnbabyburn(user)
	playsound(src, 'sound/items/welder.ogg', 100, 1)
	atmos_spawn_air("plasma=400;TEMP=1000")
	new /obj/structure/girder/displaced(loc)
	qdel(src)

/obj/structure/falsewall/plasma/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300)
		burnbabyburn()

/obj/structure/falsewall/bananium
	name = "банановая стена"
	desc = "Стена с банановым покрытием. Хонк!"
	icon = 'icons/turf/walls/bananium_wall.dmi'
	icon_state = "bananium"
	mineral = /obj/item/stack/sheet/mineral/bananium
	walltype = /turf/closed/wall/mineral/bananium
	canSmoothWith = list(/obj/structure/falsewall/bananium, /turf/closed/wall/mineral/bananium)


/obj/structure/falsewall/sandstone
	name = "стена из песчаника"
	desc = "Стена, облицованная песчаником. Грубый."
	icon = 'icons/turf/walls/sandstone_wall.dmi'
	icon_state = "sandstone"
	mineral = /obj/item/stack/sheet/mineral/sandstone
	walltype = /turf/closed/wall/mineral/sandstone
	canSmoothWith = list(/obj/structure/falsewall/sandstone, /turf/closed/wall/mineral/sandstone)

/obj/structure/falsewall/wood
	name = "деревянная стена"
	desc = "Стена с деревянной обшивкой. Жесткий."
	icon = 'icons/turf/walls/wood_wall.dmi'
	icon_state = "wood"
	mineral = /obj/item/stack/sheet/mineral/wood
	walltype = /turf/closed/wall/mineral/wood
	canSmoothWith = list(/obj/structure/falsewall/wood, /turf/closed/wall/mineral/wood, /turf/closed/indestructible/wood)

/obj/structure/falsewall/iron
	name = "грубая металлическая стена"
	desc = "Стена с грубой металлической обшивкой."
	icon = 'icons/turf/walls/iron_wall.dmi'
	icon_state = "iron"
	mineral = /obj/item/stack/rods
	mineral_amount = 5
	walltype = /turf/closed/wall/mineral/iron
	canSmoothWith = list(/obj/structure/falsewall/iron, /turf/closed/wall/mineral/iron)

/obj/structure/falsewall/abductor
	name = "инопланетная стена"
	desc = "A wall with alien alloy plating."
	icon = 'icons/turf/walls/abductor_wall.dmi'
	icon_state = "abductor"
	mineral = /obj/item/stack/sheet/mineral/abductor
	walltype = /turf/closed/wall/mineral/abductor
	canSmoothWith = list(/obj/structure/falsewall/abductor, /turf/closed/wall/mineral/abductor)

/obj/structure/falsewall/titanium
	name = "стена"
	desc = "Легкая титановая стенка, используемая в челноках."
	icon = 'icons/turf/walls/shuttle_wall.dmi'
	icon_state = "shuttle"
	mineral = /obj/item/stack/sheet/mineral/titanium
	walltype = /turf/closed/wall/mineral/titanium
	smooth = SMOOTH_MORE
	canSmoothWith = list(/turf/closed/wall/mineral/titanium, /obj/machinery/door/airlock/shuttle, /obj/machinery/door/airlock, /obj/structure/window/shuttle, /obj/structure/shuttle/engine/heater)

/obj/structure/falsewall/plastitanium
	name = "стена"
	desc = "Зловещая стена из плазмы и титана."
	icon = 'icons/turf/walls/plastitanium_wall.dmi'
	icon_state = "shuttle"
	mineral = /obj/item/stack/sheet/mineral/plastitanium
	walltype = /turf/closed/wall/mineral/plastitanium
	smooth = SMOOTH_MORE
	canSmoothWith = list(/turf/closed/wall/mineral/plastitanium, /obj/machinery/door/airlock/shuttle, /obj/machinery/door/airlock, /obj/structure/window/shuttle, /obj/structure/shuttle/engine/heater)

/obj/structure/falsewall/brass
	name = "стена с часовым механизмом"
	desc = "Огромный кусок теплого металла. Изнутри доносится лязг механизмов."
	icon = 'icons/turf/walls/clockwork_wall.dmi'
	icon_state = "clockwork_wall"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	mineral_amount = 1
	canSmoothWith = list(/obj/effect/clockwork/overlay/wall, /obj/structure/falsewall/brass)
	girder_type = /obj/structure/destructible/clockwork/wall_gear/displaced
	walltype = /turf/closed/wall/clockwork
	mineral = /obj/item/stack/tile/brass

/obj/structure/falsewall/brass/New(loc)
	..()
	var/turf/T = get_turf(src)
	new /obj/effect/temp_visual/ratvar/wall/false(T)
	new /obj/effect/temp_visual/ratvar/beam/falsewall(T)
	change_construction_value(4)

/obj/structure/falsewall/brass/Destroy()
	change_construction_value(-4)
	return ..()

/obj/structure/falsewall/brass/ratvar_act()
	if(GLOB.ratvar_awakens)
		obj_integrity = max_integrity
