/// @description Turn Preperation Start

// Say something
var inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
inst.text = "{skippable false}{effect 1}. . .";
inst.template = 0;