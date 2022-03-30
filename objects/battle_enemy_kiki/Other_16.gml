/// @description Dialog Start

if (_hp <= (_hp_max * 0.1)) {
	Battle_SetMenuDialog(Lang_GetString("battle.enemy.kiki.flavor.2"));
} else if (Battle_IsEnemySpareable(_enemy_slot)) {
	Battle_SetMenuDialog(Lang_GetString("battle.enemy.kiki.flavor.1"));
} else {
	Battle_SetMenuDialog(Lang_GetString("battle.enemy.kiki.flavor.0"));
}