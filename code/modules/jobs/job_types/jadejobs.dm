//Head Maid

/datum/job/headmaid
	title = "Head Maid"
	flag = HEADMAID
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the owners of the mansion"
	selection_color = "#ccccff"
	req_admin_notify = 1
	minimal_player_age = 14

	outfit = /datum/outfit/job/headmaid

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()

/datum/job/headmaid/get_access()
	return get_all_accesses()

/datum/job/headmaid/announce(mob/living/carbon/human/H)
	..()
	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "The headmaid [H.real_name] has arrived!"))

/datum/outfit/job/headmaid
	name = "Head Maid"
	jobtype = /datum/job/headmaid

	id = /obj/item/weapon/card/id/gold
	belt = /obj/item/device/pda/captain
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/device/radio/headset/heads/captain/alt
	gloves = /obj/item/clothing/gloves/color/captain
	uniform =  /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/armor/vest/capcarapace
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/caphat
	backpack_contents = list(/obj/item/weapon/melee/classic_baton/telescopic=1, /obj/item/station_charter=1)

	backpack = /obj/item/weapon/storage/backpack/captain
	satchel = /obj/item/weapon/storage/backpack/satchel/cap
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag/captain

	implants = list(/obj/item/weapon/implant/mindshield)


//OWNER

/datum/job/mansionowner
	title = "Mansion Owner"
	flag = MANSIONOWNER
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "nobody but yourself"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/mansionowner

	access = list(GLOB.access_library)
	minimal_access = list(GLOB.access_library)

/datum/outfit/job/mansionowner
	name = "Mansion Owner"
	jobtype = /datum/job/mansionowner

	belt = /obj/item/device/pda/librarian
	uniform = /obj/item/clothing/under/rank/librarian
	l_hand = /obj/item/weapon/storage/bag/books
	r_pocket = /obj/item/weapon/barcodescanner
	l_pocket = /obj/item/device/laser_pointer
	backpack_contents = list(
		/obj/item/soapstone = 1
	)

//Butler

/datum/job/butler
	title = "Butler"
	flag = BUTLER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the headmaid and the mansion owners"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/butler

	access = list(GLOB.access_hydroponics, GLOB.access_bar, GLOB.access_kitchen, GLOB.access_morgue, GLOB.access_weapons)
	minimal_access = list(GLOB.access_bar)


/datum/outfit/job/butler
	name = "Butler"
	jobtype = /datum/job/butler

	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	belt = /obj/item/device/pda/bar
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/weapon/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup

// Downstairs Maid

/datum/job/downstairsmaid
	title = "Downstairs Maid"
	flag = DOWNSTAIRSMAID
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the headmaid"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/downstairsmaid

	access = list(GLOB.access_hydroponics, GLOB.access_bar, GLOB.access_kitchen, GLOB.access_morgue)
	minimal_access = list(GLOB.access_kitchen, GLOB.access_morgue)

/datum/outfit/job/downstairsmaid
	name = "Downstairs Maid"
	jobtype = /datum/job/downstairsmaid

	belt = /obj/item/device/pda/cook
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/chef
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat
	backpack_contents = list(/obj/item/weapon/sharpener = 1)

/datum/outfit/job/downstairsmaid/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

/datum/outfit/job/downstairsmaid/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
    ..()
    var/list/possible_boxes = subtypesof(/obj/item/weapon/storage/box/ingredients)
    var/chosen_box = pick(possible_boxes)
    var/obj/item/weapon/storage/box/I = new chosen_box(src)
    H.equip_to_slot_or_del(I,slot_in_backpack)

/*
Gardener
*/
/datum/job/gardener
	title = "Gardener"
	flag = GARDENER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the headmaid"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/gardener

	access = list(GLOB.access_hydroponics, GLOB.access_bar, GLOB.access_kitchen, GLOB.access_morgue)
	minimal_access = list(GLOB.access_hydroponics, GLOB.access_morgue)
	// Removed tox and chem access because STOP PISSING OFF THE CHEMIST GUYS
	// Removed medical access because WHAT THE FUCK YOU AREN'T A DOCTOR YOU GROW WHEAT
	// Given Morgue access because they have a viable means of cloning.


/datum/outfit/job/gardener
	name = "Gardener"
	jobtype = /datum/job/gardener

	belt = /obj/item/device/pda/botanist
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/hydroponics
	suit = /obj/item/clothing/suit/apron
	gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/device/plant_analyzer

	backpack = /obj/item/weapon/storage/backpack/botany
	satchel = /obj/item/weapon/storage/backpack/satchel/hyd


/*
Upstairs Maid
*/
/datum/job/upstairsmaid
	title = "Upstairs Maid"
	flag = UPSTAIRSMAID
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/global/janitors = 0

	outfit = /datum/outfit/job/upstairsmaid

	access = list(GLOB.access_janitor, GLOB.access_maint_tunnels)
	minimal_access = list(GLOB.access_janitor, GLOB.access_maint_tunnels)

/datum/outfit/job/upstairsmaid
	name = "Upstairs Maid"
	jobtype = /datum/job/upstairsmaid

	belt = /obj/item/device/pda/janitor
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/janitor
	backpack_contents = list(/obj/item/device/modular_computer/tablet/preset/advanced=1, /obj/item/soapstone/empty=1)

/*
Guard
*/
/datum/job/guard
	title = "Guard"
	flag = GUARD
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the owners of the mansion"
	selection_color = "#dddddd"
	var/lawyers = 0 //Counts lawyer amount

	outfit = /datum/outfit/job/guard

	access = list(GLOB.access_lawyer, GLOB.access_court, GLOB.access_sec_doors)
	minimal_access = list(GLOB.access_lawyer, GLOB.access_court, GLOB.access_sec_doors)

/datum/outfit/job/guard
	name = "Guard"
	jobtype = /datum/job/guard

	belt = /obj/item/device/pda/lawyer
	ears = /obj/item/device/radio/headset/headset_sec
	uniform = /obj/item/clothing/under/lawyer/bluesuit
	suit = /obj/item/clothing/suit/toggle/lawyer
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/weapon/storage/briefcase/lawyer
	l_pocket = /obj/item/device/laser_pointer
	r_pocket = /obj/item/clothing/tie/lawyers_badge