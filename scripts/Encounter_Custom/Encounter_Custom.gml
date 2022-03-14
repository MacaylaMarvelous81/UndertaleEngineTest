function Encounter_Custom() {
	Encounter_Set(0,-1,battle_enemy,-1,"* You encountered nothing!",-1);
	Encounter_Set(1, -1, battle_enemy_dummy, -1, "* You encountered the Dummy.", -1, true, true, false, 0, 0);
}