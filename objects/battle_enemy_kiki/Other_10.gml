/// @description Init

Battle_SetEnemyName(_enemy_slot, Lang_GetString("battle.enemy.kiki.name")); // * Kiki
Battle_SetEnemyActionNumber(_enemy_slot, 1);
Battle_SetEnemyActionName(_enemy_slot, 0, Lang_GetString("battle.enemy.kiki.act.0")); // * Check

Battle_SetEnemyDEF(_enemy_slot, 1);

_hp_max = 50;
_hp = 50;