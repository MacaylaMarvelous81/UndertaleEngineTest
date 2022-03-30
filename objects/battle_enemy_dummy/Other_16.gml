/// @description Dialog Start

if (Battle_IsEnemySpareable(_enemy_slot)) {
	Battle_SetMenuDialog(Lang_GetString("battle.enemy.dummy.flavor.1"));
} else {
	Battle_SetMenuDialog(Lang_GetString("battle.enemy.dummy.flavor.0"));
}