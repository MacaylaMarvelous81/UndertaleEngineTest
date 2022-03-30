function Encounter_Custom() {
	Encounter_Set(0,-1,battle_enemy,-1,Lang_GetString("battle.encounter.0"),-1);
	Encounter_Set(1, -1, battle_enemy_dummy, -1, Lang_GetString("battle.encounter.1"), -1, true, true, false);
	Encounter_Set(2, -1, battle_enemy_kiki, -1, Lang_GetString("battle.encounter.2"), -1, true, true, false);
}