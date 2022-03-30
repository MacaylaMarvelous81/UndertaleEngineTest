/// @description Setup bullet

// Inherit the parent event
event_inherited();

// Set initial position
x = battle_board._surface_x + 40;
y = battle_board._surface_y + battle_board._surface_height - 32;

// Animation
frame = 0;

// Action
b_action = choose(false, true);
jumping = false;
jmp_spd = 3;

if (!b_action) {
	alarm[0] = 120;
}

// Start animation
alarm[1] = 1;