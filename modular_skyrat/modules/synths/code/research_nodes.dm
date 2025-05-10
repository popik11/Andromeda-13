/datum/techweb_node/improved_robotic_tend_wounds
	id = TECHWEB_NODE_ROBOTIC_SURGERY
	display_name = "Улучшенная Хирургия Синтов"
	description = "Оказывается, не нужно вырезать все опорные стержни, если они просто поцарапаны!"
	prereq_ids = list(TECHWEB_NODE_CONSTRUCTION)
	design_ids = list(
		"robotic_heal_surgery_upgrade"
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/advanced_robotic_tend_wounds
	id = TECHWEB_NODE_ROBOTIC_SURGERY_ADVANCED
	display_name = "Передовая Хирургия Синтов"
	description = "Знаете ли вы, что в «Гефесте» есть бесплатное онлайн-учебное пособие по ремонту синтетических травм? Это правда!"
	prereq_ids = list(TECHWEB_NODE_ROBOTIC_SURGERY)
	design_ids = list(
		"robotic_heal_surgery_upgrade_2",
		"robotic_trauma_surgery",
		"robotic_blessed_trauma_surgery",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS) // less expensive than the organic surgery research equivalent since its JUST tend wounds
