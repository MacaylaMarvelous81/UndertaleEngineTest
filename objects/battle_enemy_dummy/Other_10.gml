/// @description Init

Battle_SetEnemyName(_enemy_slot, Lang_GetString("battle.enemy.dummy.name")); // * Dummy
Battle_SetEnemyActionNumber(_enemy_slot, 2);
Battle_SetEnemyActionName(_enemy_slot, 0, Lang_GetString("battle.enemy.dummy.act.0")); // * Check
Battle_SetEnemyActionName(_enemy_slot, 1, Lang_GetString("battle.enemy.dummy.act.1")); // * Talk

Battle_SetEnemyDEF(_enemy_slot, 1);

_hp_max = 20;
_hp = 20;