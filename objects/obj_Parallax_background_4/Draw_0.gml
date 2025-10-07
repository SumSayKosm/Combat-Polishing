var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p0 = 1;
var _p1 = .8;
var _p2 = .6;




draw_sprite_tiled(spr_bckgrnd_forest_1, 5, _camx*_p0, _camy*_p0*0.9);

draw_sprite_tiled(spr_bckgrnd_forest_1, 4, _camx*0.99, _camy*0.9);

draw_sprite_tiled(spr_bckgrnd_forest_1, 3, _camx*0.9, _camy*0.9);

draw_sprite_tiled(spr_bckgrnd_forest_1, 2, _camx*0.8, _camy*0.9);

draw_sprite_tiled(spr_bckgrnd_forest_1, 1, _camx*0.7, _camy*0.9);

draw_sprite_tiled(spr_bckgrnd_forest_1, 0, _camx*0.6, _camy*0.9);