/// @description Move bullet

// Inherit the parent event
event_inherited();

// Walk
if (!b_action && !jumping) {
	x += 0.5;
}
// Jump
if (jumping) {
	x += jmp_spd;
	y -= 2;
	jmp_spd -= 0.01;
	if (jmp_spd <= 1) {
		jmp_spd = 1;
	}
}