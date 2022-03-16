/// @description No bullets = end turn

if (!instance_exists(_inst[0]) && !instance_exists(_inst[1])) {
	Battle_EndTurn();
}