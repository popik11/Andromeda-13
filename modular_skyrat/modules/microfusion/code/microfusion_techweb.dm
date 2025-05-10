// Microfusion research is now tied to other researches
/datum/techweb_node/parts/New()
	. = ..()
	design_ids += list(
		"basic_microfusion_cell",
	)

/datum/techweb_node/parts_upg/New()
	. = ..()
	design_ids += list(
		"enhanced_microfusion_cell",
	)

//Enhanced microfusion
/datum/techweb_node/energy_manipulation/New()
	. = ..()
	design_ids += list(
		"enhanced_microfusion_phase_emitter",
		"microfusion_gun_attachment_black_camo",
		"microfusion_gun_attachment_nt_camo",
		"microfusion_gun_attachment_heatsink",
		"microfusion_gun_attachment_rgb",
	)

/datum/techweb_node/parts_adv/New()
	. = ..()
	design_ids += list(
		"advanced_microfusion_cell",
		)

//Improved microfusion
/datum/techweb_node/improved_microfusion
	id = TECHWEB_NODE_IMPROVED_MICROFUSION
	display_name = "Улучшенная Технология Микросварки"
	description = "Усовершенствование методов изготовления деталей позволяет нам производить \
	дополнительное навесное оборудование для MCR"
	prereq_ids = list(
		TECHWEB_NODE_PARTS_ADV,
	)
	design_ids = list(
		"microfusion_cell_attachment_overcapacity",
		"microfusion_cell_attachment_stabiliser",
		"microfusion_gun_attachment_scatter",
		"microfusion_gun_attachment_hellfire",
		"advanced_microfusion_phase_emitter",
		"microfusion_gun_attachment_lance",
		"microfusion_gun_attachment_grip",
		"microfusion_gun_attachment_rail",
		"microfusion_gun_attachment_scope",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)


// Bluespace microfusion
/datum/techweb_node/bluespace_microfusion
	id = TECHWEB_NODE_BLUESPACE_MICROFUSION
	display_name = "Технология Блюспейс Микросварки"
	description = "Блюспейс тинкеринг плюс технология микросварки!"
	prereq_ids = list(
		TECHWEB_NODE_IMPROVED_MICROFUSION,
		TECHWEB_NODE_PARTS_BLUESPACE,
		TECHWEB_NODE_BEAM_WEAPONS,
		TECHWEB_NODE_ELECTRIC_WEAPONS,
		TECHWEB_NODE_FUSION,
	)
	design_ids = list(
		"bluespace_microfusion_cell",
		"microfusion_gun_attachment_repeater",
		"bluespace_microfusion_phase_emitter",
		"microfusion_cell_attachment_selfcharging",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)

// Quantum microfusion
/datum/techweb_node/quantum_microfusion
	id = TECHWEB_NODE_QUANTUM_MICROFUSION
	display_name = "Технология Квантовой Микросварки"
	description = "Кровоточащая технология микросварки, использующая новейшие материалы и компоненты, блюспейс или другие."
	prereq_ids = list(
		TECHWEB_NODE_BLUESPACE_MICROFUSION,
		TECHWEB_NODE_ALIENTECH,
	)
	design_ids = list(
		"microfusion_gun_attachment_xray",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)

// Warcrime microfusion
/datum/techweb_node/illegal_microfusion
	id = TECHWEB_NODE_ILLEGAL_MICROFUSION
	display_name = "Нелегальная Технология Микросварки"
	description = "Технология микросварки, которая ранее была запрещена TerraGov. Обожаю запах плазмы по утрам."
	prereq_ids = list(
		TECHWEB_NODE_IMPROVED_MICROFUSION,
		TECHWEB_NODE_SYNDICATE_BASIC,
	)
	design_ids = list(
		"microfusion_gun_attachment_superheat",
		"microfusion_gun_attachment_scattermax",
		"microfusion_gun_attachment_penetrator",
		"microfusion_gun_attachment_syndi_camo",
		"microfusion_gun_attachment_suppressor",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)

// Clown microfusion.
/datum/techweb_node/clown_microfusion
	id = TECHWEB_NODE_CLOWN_MICROFUSION
	display_name = "Технология Honkicron Clownery Systems"
	description = "Технология микросварки, запатентованная компанией Honkicron Clownery Systems. ХОНК!!!"
	prereq_ids = list(
		TECHWEB_NODE_IMPROVED_MICROFUSION,
	)
	design_ids = list(
		"microfusion_gun_attachment_honk",
		"microfusion_gun_attachment_honk_camo",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS) //Its normally supposed to be in clown tech so
