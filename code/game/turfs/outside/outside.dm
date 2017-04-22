/turf/open/outside
	icon = 'icons/turf/floors.dmi'
	icon_state = "outsidedirt"
	name = "\proper dirt"

	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	planetary_atmos = TRUE
	var/floor_variance = 10
	light_power = 5
	light_range = 3


/*
/turf/open/outside/Initialize()
	var/proper_name = name
	..()
	name = proper_name
	if(prob(floor_variance))
		icon_state = "outsidedirt[rand(1,13)]"

/turf/open/upstairsoutside
*/