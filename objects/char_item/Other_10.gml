/// @description Interact

// Inherit the parent event
event_inherited();

// Award item
if (Item_Add(award_item)) {
	Dialog_Add(text);
	Dialog_Start();
	instance_destroy();
} else {
	Dialog_Add(Lang_GetString("dialog.item.full"));
	Dialog_Start();
}