/// @description Menu End

switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		// Should enemy be spareable? 10% of hp left
		if (_hp <= (_hp_max * 0.1) && !Battle_IsEnemySpareable(_enemy_slot)) {
			Battle_SetEnemySpareable(_enemy_slot, true);
		}
		// Should enemy be dead?
		if (_hp <= 0) {
			// Create particle effect
			var inst = instance_create_depth(x, y, 0, battle_death_particle);
			inst.sprite = spr_battle_enemy_dummy_hit;
			audio_play_sound(snd_vaporize, 0, false);
			instance_destroy();
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction()) {
			case 0:
				Dialog_Add(Lang_GetString("battle.enemy.dummy.check.0"));
				break;
			case 1:
				Dialog_Add(Lang_GetString("battle.enemy.dummy.talk.0"));
				Battle_SetEnemySpareable(_enemy_slot, true);
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		if (Battle_GetMenuChoiceMercy() == 0 && Battle_IsEnemySpareable(_enemy_slot)) {
			// TODO: particles, etc
			var inst = instance_create_depth(x, y, 0, battle_spare_particle);
			inst.sprite = spr_battle_enemy_dummy_hit;
			audio_play_sound(snd_vaporize, 0, false);
			instance_destroy();
		}
		break;
}