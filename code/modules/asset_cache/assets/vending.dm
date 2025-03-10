
/datum/asset/spritesheet/vending
	name = "vending"

/datum/asset/spritesheet/vending/register()
	for (var/k in GLOB.vending_products)
		var/atom/item = k
		if (!ispath(item, /atom))
			continue

		var/icon_file
		//if (initial(item.greyscale_colors) && initial(item.greyscale_config))
		//	icon_file = SSgreyscale.GetColoredIconByType(initial(item.greyscale_config), initial(item.greyscale_colors))
		//else
		icon_file = initial(item.icon)
		var/icon_state = initial(item.icon_state)

		// BLUEMOON EDIT - Vending Update: START
		#ifdef UNIT_TESTS
		var/icon_states_list = icon_states(icon_file)
		if (!(icon_state in icon_states_list))
			var/icon_states_string
			for (var/an_icon_state in icon_states_list)
				if (!icon_states_string)
					icon_states_string = "[json_encode(an_icon_state)](\ref[an_icon_state])"
				else
					icon_states_string += ", [json_encode(an_icon_state)](\ref[an_icon_state])"

			stack_trace("[item] does not have a valid icon state, icon=[icon_file], icon_state=[json_encode(icon_state)](\ref[icon_state]), icon_states=[icon_states_string]")
			continue
		#endif

		var/icon/I = icon(icon_file, icon_state, SOUTH)
		var/c = initial(item.color)
		if (!isnull(c) && c != "#FFFFFF")
			I.Blend(c, ICON_MULTIPLY)

		var/imgid = replacetext(replacetext("[item]", "/obj/item/", ""), "/", "-")

		Insert(imgid, I)
	return ..()
// BLUEMOON EDIT -  Vending Update: END
