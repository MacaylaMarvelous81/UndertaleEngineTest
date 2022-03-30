/// @description Turn Preperation Start

// Prepare attack
instance_create_depth(0, 0, 0, battle_turn_kiki1);

// Say something
var inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
inst.text = Lang_GetString("battle.enemy.kiki.dialog.0");
inst.template = 0;