/datum/controller/subsystem/ticker/proc/opfor_report()
	var/list/result = list()

	result += "<span class='header'>Отчет о противоборствующих силах:</span><br>"

	if(!SSopposing_force.approved_applications.len)
		result += span_red("Ни одно из заявлений не было одобрено.")
	else
		for(var/datum/opposing_force/opfor in SSopposing_force.approved_applications)
			result += opfor.roundend_report()

	return "<div class='panel stationborder'>[result.Join()]</div>"
