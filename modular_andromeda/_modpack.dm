/datum/modpack
	/// A string name for the modpack. Used for looking up other modpacks in init.
	/// Строковое имя для модпака. Используется для поиска других модпаков в init.
	var/name
	/// A string desc for the modpack. Can be used for modpack verb list as description.
	/// Строка desc для modpack. Может использоваться для списка глаголов modpack в качестве описания.
	var/desc
	/// A string with authors of this modpack.
	/// Строка с авторами этого модпака.
	var/author

/datum/modpack/proc/pre_initialize()
	if(!name)
		return "Modpack name is unset." // Имя модпака не задано.

/datum/modpack/proc/initialize()
	return

/datum/modpack/proc/post_initialize()
	return
