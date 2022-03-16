/// @description Move bullet

// Inherit the parent event
event_inherited();

// Move bullet (horizontal)
if (hdir) {
	x += spd;
} else {
	x -= spd;
}

// Move bullet (vertical)
if (vdir) {
	y += spd;
} else {
	y -= spd;
}

// When touching bullet box edge (horizontal)
if (x <= battle_board._surface_x || x + 16 >= battle_board._surface_x + battle_board._surface_width) {
	hdir = !hdir;
	spd += 0.3;
}

// When touching bullet box edge (vertical)
if (y <= battle_board._surface_y || y + 16 >= battle_board._surface_y + battle_board._surface_height) {
	vdir = !vdir;
	spd += 0.3;
}

// Clamp speed
spd = median(1, spd, 3);