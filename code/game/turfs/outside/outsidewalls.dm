/turf/closed/outsiderock/ //wall piece
	name = "rock"
	icon = 'icons/turf/mining.dmi'
	icon_state = "rock"
	var/smooth_icon = 'icons/turf/smoothrocks.dmi'
	smooth = SMOOTH_MORE|SMOOTH_BORDER
	canSmoothWith = list (/turf/closed)
	baseturf = /turf/open/outside
	opacity = 1
	density = 1
	blocks_air = 1
	layer = EDGED_TURF_LAYER
	temperature = TCMB

/turf/closed/outsiderock/Initialize()
	if (!canSmoothWith)
		canSmoothWith = list(/turf/closed)
	pixel_y = -4
	pixel_x = -4
	icon = smooth_icon
	..()

/turf/closed/outsiderock/rock2
	name = "rock"
	icon = 'icons/turf/mining.dmi'
	smooth_icon = 'icons/turf/walls/rock_wall.dmi'
	icon_state = "rock3"
	smooth = SMOOTH_MORE|SMOOTH_BORDER
	canSmoothWith = list (/turf/closed)
	baseturf = /turf/open/outside