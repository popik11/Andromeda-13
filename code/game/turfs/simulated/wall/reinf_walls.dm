/turf/closed/wall/r_wall
	name = "укреплённая стена"
	desc = "Огромный кусок армированного металла, используемый для разделения помещений."
	icon = 'icons/turf/walls/reinforced_wall.dmi'
	icon_state = "r_wall"
	opacity = 1
	density = TRUE

	var/d_state = INTACT
	hardness = 10
	sheet_type = /obj/item/stack/sheet/plasteel
	sheet_amount = 1
	girder_type = /obj/structure/girder/reinforced
	explosion_block = 2
	wave_explosion_block = EXPLOSION_BLOCK_BLAST_PROOF
	wave_explosion_multiply = EXPLOSION_DAMPEN_BLAST_PROOF
	explosion_power_to_scrape = EXPLOSION_POWER_RWALL_SCRAPE
	explosion_power_to_dismantle = EXPLOSION_POWER_RWALL_DISMANTLE
	explosion_power_minimum_chance_dismantle = EXPLOSION_POWER_RWALL_MINIMUM_DISMANTLE
	rad_insulation = RAD_HEAVY_INSULATION

/turf/closed/wall/r_wall/deconstruction_hints(mob/user)
	switch(d_state)
		if(INTACT)
			return "<span class='notice'>The outer <b>grille</b> is fully intact.</span>"
		if(SUPPORT_LINES)
			return "<span class='notice'>The outer <i>grille</i> has been cut, and the support lines are <b>screwed</b> securely to the outer cover.</span>"
		if(COVER)
			return "<span class='notice'>The support lines have been <i>unscrewed</i>, and the metal cover is <b>welded</b> firmly in place.</span>"
		if(CUT_COVER)
			return "<span class='notice'>The metal cover has been <i>sliced through</i>, and is <b>connected loosely</b> to the girder.</span>"
		if(ANCHOR_BOLTS)
			return "<span class='notice'>The outer cover has been <i>pried away</i>, and the bolts anchoring the support rods are <b>wrenched</b> in place.</span>"
		if(SUPPORT_RODS)
			return "<span class='notice'>The bolts anchoring the support rods have been <i>loosened</i>, but are still <b>welded</b> firmly to the girder.</span>"
		if(SHEATH)
			return "<span class='notice'>The support rods have been <i>sliced through</i>, and the outer sheath is <b>connected loosely</b> to the girder.</span>"

/turf/closed/wall/r_wall/devastate_wall()
	new sheet_type(src, sheet_amount)
	new /obj/item/stack/sheet/metal(src, 2)

/turf/closed/wall/r_wall/attack_animal(mob/living/simple_animal/M)
	if(!M.CheckActionCooldown())
		return
	M.do_attack_animation(src)
	if(!M.environment_smash)
		return
	if(M.environment_smash & ENVIRONMENT_SMASH_RWALLS)
		dismantle_wall(1)
		playsound(src, 'sound/effects/meteorimpact.ogg', 100, 1)
	else
		playsound(src, 'sound/effects/bang.ogg', 50, 1)
		to_chat(M, "<span class='warning'>This wall is far too strong for you to destroy.</span>")
	M.DelayNextAction()

/turf/closed/wall/r_wall/try_destroy(obj/item/I, mob/user, turf/T)
	if(istype(I, /obj/item/pickaxe/drill/jackhammer))
		to_chat(user, "<span class='notice'>You begin to smash though [src]...</span>")
		if(do_after(user, 50, target = src))
			if(!istype(src, /turf/closed/wall/r_wall))
				return TRUE
			I.play_tool_sound(src)
			visible_message("<span class='warning'>[user] smashes through [src] with [I]!</span>", "<span class='italics'>You hear the grinding of metal.</span>")
			dismantle_wall()
			return TRUE
	return FALSE

/turf/closed/wall/r_wall/try_decon(obj/item/W, mob/user, turf/T)
	//DECONSTRUCTION
	switch(d_state)
		if(INTACT)
			if(W.tool_behaviour == TOOL_WIRECUTTER)
				W.play_tool_sound(src, 100)
				d_state = SUPPORT_LINES
				update_icon()
				to_chat(user, "<span class='notice'>You cut the outer grille.</span>")
				return TRUE

		if(SUPPORT_LINES)
			if(W.tool_behaviour == TOOL_SCREWDRIVER)
				to_chat(user, "<span class='notice'>You begin unsecuring the support lines...</span>")
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != SUPPORT_LINES)
						return TRUE
					d_state = COVER
					update_icon()
					to_chat(user, "<span class='notice'>You unsecure the support lines.</span>")
				return TRUE

			else if(W.tool_behaviour == TOOL_WIRECUTTER)
				W.play_tool_sound(src, 100)
				d_state = INTACT
				update_icon()
				to_chat(user, "<span class='notice'>You repair the outer grille.</span>")
				return TRUE

		if(COVER)
			if(W.tool_behaviour == TOOL_WELDER || istype(W, /obj/item/gun/energy/plasmacutter))
				if(!W.tool_start_check(user, amount=0))
					return
				to_chat(user, "<span class='notice'>You begin slicing through the metal cover...</span>")
				if(W.use_tool(src, user, 60, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != COVER)
						return TRUE
					d_state = CUT_COVER
					update_icon()
					to_chat(user, "<span class='notice'>You press firmly on the cover, dislodging it.</span>")
				return TRUE

			if(W.tool_behaviour == TOOL_SCREWDRIVER)
				to_chat(user, "<span class='notice'>You begin securing the support lines...</span>")
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != COVER)
						return TRUE
					d_state = SUPPORT_LINES
					update_icon()
					to_chat(user, "<span class='notice'>The support lines have been secured.</span>")
				return TRUE

		if(CUT_COVER)
			if(W.tool_behaviour == TOOL_CROWBAR)
				to_chat(user, "<span class='notice'>You struggle to pry off the cover...</span>")
				if(W.use_tool(src, user, 100, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != CUT_COVER)
						return TRUE
					d_state = ANCHOR_BOLTS
					update_icon()
					to_chat(user, "<span class='notice'>You pry off the cover.</span>")
				return TRUE

			if(W.tool_behaviour == TOOL_WELDER)
				if(!W.tool_start_check(user, amount=0))
					return
				to_chat(user, "<span class='notice'>You begin welding the metal cover back to the frame...</span>")
				if(W.use_tool(src, user, 60, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != CUT_COVER)
						return TRUE
					d_state = COVER
					update_icon()
					to_chat(user, "<span class='notice'>The metal cover has been welded securely to the frame.</span>")
				return TRUE

		if(ANCHOR_BOLTS)
			if(W.tool_behaviour == TOOL_WRENCH)
				to_chat(user, "<span class='notice'>You start loosening the anchoring bolts which secure the support rods to their frame...</span>")
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != ANCHOR_BOLTS)
						return TRUE
					d_state = SUPPORT_RODS
					update_icon()
					to_chat(user, "<span class='notice'>You remove the bolts anchoring the support rods.</span>")
				return TRUE

			if(W.tool_behaviour == TOOL_CROWBAR)
				to_chat(user, "<span class='notice'>You start to pry the cover back into place...</span>")
				if(W.use_tool(src, user, 20, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != ANCHOR_BOLTS)
						return TRUE
					d_state = CUT_COVER
					update_icon()
					to_chat(user, "<span class='notice'>The metal cover has been pried back into place.</span>")
				return TRUE

		if(SUPPORT_RODS)
			if(W.tool_behaviour == TOOL_WELDER || istype(W, /obj/item/gun/energy/plasmacutter))
				if(!W.tool_start_check(user, amount=0))
					return
				to_chat(user, "<span class='notice'>You begin slicing through the support rods...</span>")
				if(W.use_tool(src, user, 100, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != SUPPORT_RODS)
						return TRUE
					d_state = SHEATH
					update_icon()
					to_chat(user, "<span class='notice'>You slice through the support rods.</span>")
				return TRUE

			if(W.tool_behaviour == TOOL_WRENCH)
				to_chat(user, "<span class='notice'>You start tightening the bolts which secure the support rods to their frame...</span>")
				W.play_tool_sound(src, 100)
				if(W.use_tool(src, user, 40))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != SUPPORT_RODS)
						return TRUE
					d_state = ANCHOR_BOLTS
					update_icon()
					to_chat(user, "<span class='notice'>You tighten the bolts anchoring the support rods.</span>")
				return TRUE

		if(SHEATH)
			if(W.tool_behaviour == TOOL_CROWBAR)
				to_chat(user, "<span class='notice'>You struggle to pry off the outer sheath...</span>")
				if(W.use_tool(src, user, 100, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != SHEATH)
						return TRUE
					to_chat(user, "<span class='notice'>You pry off the outer sheath.</span>")
					dismantle_wall()
				return TRUE

			if(W.tool_behaviour == TOOL_WELDER)
				if(!W.tool_start_check(user, amount=0))
					return
				to_chat(user, "<span class='notice'>You begin welding the support rods back together...</span>")
				if(W.use_tool(src, user, 100, volume=100))
					if(!istype(src, /turf/closed/wall/r_wall) || d_state != SHEATH)
						return TRUE
					d_state = SUPPORT_RODS
					update_icon()
					to_chat(user, "<span class='notice'>You weld the support rods back together.</span>")
				return TRUE
	return FALSE

/turf/closed/wall/r_wall/update_icon()
	. = ..()
	if(d_state != INTACT)
		smooth = SMOOTH_FALSE
		clear_smooth_overlays()
	else
		smooth = SMOOTH_TRUE
		queue_smooth_neighbors(src)
		queue_smooth(src)

/turf/closed/wall/r_wall/update_icon_state()
	if(d_state != INTACT)
		icon_state = "r_wall-[d_state]"
	else
		icon_state = "r_wall"

/turf/closed/wall/r_wall/singularity_pull(S, current_size)
	. = ..()
	if(.)
		return .
	if(current_size >= STAGE_FIVE)
		if(prob(30))
			dismantle_wall()

/turf/closed/wall/r_wall/rcd_vals(mob/user, obj/item/construction/rcd/the_rcd)
	if(the_rcd.canRturf)
		return ..()


/turf/closed/wall/r_wall/rcd_act(mob/user, obj/item/construction/rcd/the_rcd, passed_mode)
	if(the_rcd.canRturf)
		return ..()

/turf/closed/wall/r_wall/rust_heretic_act()
	if(prob(50))
		return
	if(prob(70))
		new /obj/effect/temp_visual/glowing_rune(src)
	ChangeTurf(/turf/closed/wall/r_wall/rust)

/turf/closed/wall/r_wall/syndicate
	name = "hull"
	desc = "The armored hull of an ominous looking ship."
	icon = 'icons/turf/walls/plastitanium_wall.dmi'
	icon_state = "map-shuttle"
	explosion_block = 20
	sheet_type = /obj/item/stack/sheet/mineral/plastitanium
	smooth = SMOOTH_MORE|SMOOTH_DIAGONAL
	canSmoothWith = list(/turf/closed/wall/r_wall/syndicate, /turf/closed/wall/mineral/plastitanium, /obj/machinery/door/airlock/shuttle, /obj/machinery/door/airlock, /obj/structure/window/plastitanium, /obj/structure/shuttle/engine, /obj/structure/falsewall/plastitanium)

/turf/closed/wall/r_wall/syndicate/rcd_vals(mob/user, obj/item/construction/rcd/the_rcd)
	return FALSE

/turf/closed/wall/r_wall/syndicate/nodiagonal
	smooth = SMOOTH_MORE
	icon_state = "map-shuttle_nd"

/turf/closed/wall/r_wall/syndicate/nosmooth
	icon = 'icons/turf/shuttle.dmi'
	icon_state = "wall"
	smooth = SMOOTH_FALSE

/turf/closed/wall/r_wall/syndicate/overspace
	icon_state = "map-overspace"
	fixed_underlay = list("space"=1)

/////////////////////Pirate Ship walls/////////////////////

/turf/closed/wall/r_wall/syndicate/pirate
	desc = "Yarr just try to blow this to smithereens!"
	explosion_block = 30
	canSmoothWith = list(/turf/closed/wall/r_wall/syndicate/pirate, /obj/machinery/door/airlock/shuttle, /obj/machinery/door/airlock, /obj/structure/window/plastitanium/pirate, /obj/structure/shuttle/engine, /obj/structure/falsewall/plastitanium)

/turf/closed/wall/r_wall/syndicate/pirate/nodiagonal
	smooth = SMOOTH_MORE
	icon_state = "map-shuttle_nd"

/turf/closed/wall/r_wall/syndicate/pirate/nosmooth
	icon = 'icons/turf/shuttle.dmi'
	icon_state = "wall"

/turf/closed/wall/r_wall/syndicate/pirate/overspace
	icon_state = "map-overspace"
	fixed_underlay = list("space"=1)
