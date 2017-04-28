/datum/job/headmaid
	title = "Head Maid"
	flag = HEAD_MAID
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mansion owners"
	selection_color = "#ffeeff"

	outfit = /datum/outfit/job/headmaid

	access = list(GLOB.access_robotics, GLOB.access_tox, GLOB.access_tox_storage, GLOB.access_research, GLOB.access_xenobiology, GLOB.access_mineral_storeroom, GLOB.access_tech_storage, GLOB.access_genetics)
	minimal_access = list(GLOB.access_tox, GLOB.access_tox_storage, GLOB.access_research, GLOB.access_xenobiology, GLOB.access_mineral_storeroom)

/datum/outfit/job/scientist
	name = "Scientist"
	jobtype = /datum/job/scientist

	belt = /obj/item/device/pda/toxins
	ears = /obj/item/device/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit = /obj/item/clothing/suit/toggle/labcoat/science

	backpack = /obj/item/weapon/storage/backpack/science
	satchel = /obj/item/weapon/storage/backpack/satchel/tox
