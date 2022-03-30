/// @description Menu End

switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		// Should enemy be spareable? 10% of hp left
		if (_hp <= (_hp_max * 0.1) && !Battle_IsEnemySpareable(_enemy_slot)) {
			Battle_SetEnemySpareable(_enemy_slot, true);
		}
		// Should enemy be dead?
		if (_hp <= 0) {
			// Reward player
			Battle_RewardExp(4);
			Battle_RewardGold(20);
			// Create particle effect
			var inst = instance_create_depth(x, y, 0, battle_death_particle);
			inst.sprite = spr_battle_enemy_kiki_hit;
			audio_play_sound(snd_vaporize, 0, false);
			instance_destroy();
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction()) {
			case 0:
				Dialog_Add(Lang_GetString("battle.enemy.kiki.check.0"));
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		if (Battle_GetMenuChoiceMercy() == 0 && Battle_IsEnemySpareable(_enemy_slot)) {
			// Reward player
			Battle_RewardGold(16);
			// TODO: particles
			var inst = instance_create_depth(x, y, 0, battle_spare_particle);
			inst.sprite = spr_battle_enemy_kiki_hit;
			audio_play_sound(snd_vaporize, 0, false);
			instance_destroy();
		}
		break;
}