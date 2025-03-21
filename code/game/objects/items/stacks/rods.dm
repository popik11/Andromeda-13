GLOBAL_LIST_INIT(rod_recipes, list ( \
	new/datum/stack_recipe("Grille", /obj/structure/grille, 2, time = 10, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("Table Frame", /obj/structure/table_frame, 2, time = 10, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("Scooter Frame", /obj/item/scooter_frame, 10, time = 25, one_per_turf = 0), \
	new/datum/stack_recipe("Railing", /obj/structure/railing, 3, time = 18, window_checks = TRUE), \
	new/datum/stack_recipe("Catwalk Tile", /obj/item/stack/tile/catwalk_tile, 1, 4, 20), \
	new/datum/stack_recipe("Guard Rail", /obj/structure/deployable_barricade/guardrail, 2, time = 1 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("Tank Holder", /obj/structure/tank_holder, 2, time = 5, one_per_turf = TRUE, on_floor = FALSE), \
	new/datum/stack_recipe("Glasses Frame", /obj/item/glasswork/glass_base/glasses_frame, 3, 1, 1, 30 SECONDS), \
	new /datum/stack_recipe_list("railing", list( \
		new/datum/stack_recipe("railing", /obj/structure/railing, 2, time = 18, window_checks = TRUE), \
		new/datum/stack_recipe("railing corner", /obj/structure/railing/corner, 2, time = 18, window_checks = TRUE), \
		new/datum/stack_recipe("railing end", /obj/structure/railing/corner/end, 2, time = 18, window_checks = TRUE), \
		new/datum/stack_recipe("railing flipped end", /obj/structure/railing/corner/end/flip, 2, time = 18, window_checks = TRUE), \
	)), \
	))

/obj/item/stack/rods
	name = "металлический стержень"
	desc = "Несколько прутьев. Можно использовать для строительства или чего-то еще."
	singular_name = "metal rod"
	icon_state = "rods"
	item_state = "rods"
	flags_1 = CONDUCT_1
	w_class = WEIGHT_CLASS_NORMAL
	force = 9
	throwforce = 10
	throw_speed = 3
	throw_range = 7
	wound_bonus = 4
	bare_wound_bonus = 3
	custom_materials = list(/datum/material/iron=1000)
	max_amount = 50
	attack_verb = list("hit", "bludgeoned", "whacked")
	hitsound = 'sound/items/trayhit1.ogg'
	embedding = list()
	novariants = TRUE

/obj/item/stack/rods/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins to stuff \the [src] down [user.ru_ego()] throat! It looks like [user.p_theyre()] trying to commit suicide!</span>")//it looks like theyre ur mum
	return BRUTELOSS

/obj/item/stack/rods/Initialize(mapload, new_amount, merge = TRUE)
	. = ..()
	update_icon()

/obj/item/stack/rods/get_main_recipes()
	. = ..()
	. += GLOB.rod_recipes

/obj/item/stack/rods/update_icon_state()
	var/amount = get_amount()
	if(amount <= 5 && amount >= 1)
		icon_state = "rods-[amount]"
	else
		icon_state = "rods"

/obj/item/stack/rods/attackby(obj/item/W, mob/user, params)
	if(W.tool_behaviour == TOOL_WELDER)
		if(get_amount() < 2)
			to_chat(user, "<span class='warning'>You need at least two rods to do this!</span>")
			return

		if(W.use_tool(src, user, 0, volume=40))
			var/obj/item/stack/sheet/metal/new_item = new(usr.loc)
			user.visible_message("[user.name] shaped [src] into metal with [W].", \
						 "<span class='notice'>You shape [src] into metal with [W].</span>", \
						 "<span class='italics'>You hear welding.</span>")
			var/obj/item/stack/rods/R = src
			src = null
			var/replace = (user.get_inactive_held_item()==R)
			R.use(2)
			if (!R && replace)
				user.put_in_hands(new_item)

	else if(istype(W, /obj/item/reagent_containers/food/snacks))
		var/obj/item/reagent_containers/food/snacks/S = W
		if(amount != 1)
			to_chat(user, "<span class='warning'>You must use a single rod!</span>")
		else if(S.w_class > WEIGHT_CLASS_SMALL)
			to_chat(user, "<span class='warning'>The ingredient is too big for [src]!</span>")
		else
			var/obj/item/reagent_containers/food/snacks/customizable/A = new/obj/item/reagent_containers/food/snacks/customizable/kebab(get_turf(src))
			A.initialize_custom_food(src, S, user)
	else
		return ..()

/obj/item/stack/rods/cyborg
	custom_materials = null
	is_cyborg = TRUE
	source = /datum/robot_energy_storage/metal
	cost = MINERAL_MATERIAL_AMOUNT * 0.125

/obj/item/stack/rods/ten
	amount = 10

/obj/item/stack/rods/twentyfive
	amount = 25

/obj/item/stack/rods/fifty
	amount = 50

/obj/item/stack/rods/lava
	name = "heat resistant rod"
	desc = "Treated, specialized metal rods. When exposed to the vaccum of space their coating breaks off, but they can hold up against the extreme heat of active lava."
	singular_name = "heat resistant rod"
	icon_state = "rods"
	item_state = "rods"
	color = "#5286b9ff"
	flags_1 = CONDUCT_1
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=1000, /datum/material/plasma=500, /datum/material/titanium=2000)
	max_amount = 30
	resistance_flags = FIRE_PROOF | LAVA_PROOF

/obj/item/stack/rods/lava/thirty
	amount = 30
