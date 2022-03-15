/// @description Encounter

// Inherit the parent event
event_inherited();

// If interacted & no dialog box (finished dialog)
if (!instance_exists(ui_dialog) && waiting_start) {
	waiting_start = false;
	Encounter_Start(1, true, false);
}