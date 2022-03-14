/// @description Menu End

switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		// Should enemy be dead?
		if (_hp <= 0) {
			// Create particle effect
			var inst = instance_create_depth(x, y, 0, battle_death_particle);
			inst.sprite = sprite_index;
			audio_play_sound(snd_vaporize, 0, false);
			instance_destroy();
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction()) {
			case 0:
				Dialog_Add("* DUMMY ATK 0 DEF 0&* Looks like it's going to fall&  over.");
				break;
			case 1:
				Dialog_Add("* You talk to the Dummy.{pause}&* It doesn't seem much for&  conversation.");
				Dialog_Add("* You are happy with yourself.");
				break;
		}
		break;
}