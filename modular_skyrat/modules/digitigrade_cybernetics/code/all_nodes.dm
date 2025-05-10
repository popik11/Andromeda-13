//digitigrade research

/datum/techweb_node/digitigrade_cyber
	id = TECHWEB_NODE_CYBERNETICS_DIGITIGRADE
	display_name = "Цифровая кибернетика"
	description = "Специализированные кибернетические конструкции конечностей. Укорочение бедренной кости, несомненно, является результатом механической оптимизации."
	prereq_ids = list(TECHWEB_NODE_ROBOTICS)
	design_ids = list(
		"digitigrade_cyber_l_leg",
		"digitigrade_cyber_r_leg",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)


/datum/techweb_node/adv_digitigrade_cyber
	id = TECHWEB_NODE_CYBERNETICS_DIGITIGRADE_ADVANCED
	display_name = "Продвинутая Цифровая Кибернетика"
	description = "Эти модели, стоящие на ступеньку выше цифрового потребительского класса, оснащены самозатачивающимися когтями, позволяющими разрушать обувь гораздо быстрее."
	prereq_ids = list(TECHWEB_NODE_AUGMENTATION)
	design_ids = list(
		"digitigrade_advanced_l_leg",
		"digitigrade_advanced_r_leg",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
