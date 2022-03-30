/// @description Use

Dialog_Add(Lang_GetString("item.watermelon.use.0") + Item_GetTextHeal(12));
Dialog_Start();

Player_Heal(12);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal, 0, false);

// Inherit the parent event
event_inherited();
