var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p0 = 1;
var _p1 = .8;
var _p2 = .6;


draw_sprite_tiled(spr_bckgrnd_cave, 2, _camx*_p0, _camy*_p0*0.9);

draw_sprite_tiled(spr_bckgrnd_cave, 1, _camx*_p1, _camy*0.9);

draw_sprite_tiled(spr_bckgrnd_cave, 0, _camx*_p2, _camy*.9);