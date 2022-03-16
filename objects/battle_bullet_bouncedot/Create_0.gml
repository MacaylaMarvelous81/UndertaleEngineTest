/// @description Setup bullet

// Inherit the parent event
event_inherited();

// Set initial position (TODO: Prevent spawning on player)
x = random_range(battle_board._surface_x + 16, battle_board._surface_x + battle_board._surface_width - 16);
y = random_range(battle_board._surface_y + 16, battle_board._surface_y + battle_board._surface_height - 16);

hdir = choose(false, true); // Choose random horizontal direction
vdir = choose(false, true); // Choose random vertical direction

spd = 1;