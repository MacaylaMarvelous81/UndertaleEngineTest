/// @description Draw bullet

surface_set_target(Battle_GetBoardSurface());
draw_sprite(spr_battle_bullet_kiki, frame, x, y);
surface_reset_target();