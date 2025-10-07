if (!surface_exists(lighting_surface))
{
lighting_surface = surface_create(cw,ch);

}


//Set surface
surface_set_target(lighting_surface);

//Paint this surface
draw_clear_alpha(c_black, 0.8);

gpu_set_blendmode(bm_subtract)

//Negate Player

var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);

draw_circle_color(Obj_Blek.x - _cx + 25, Obj_Blek.y - _cy +25, 48, c_white, c_white, false)

gpu_set_blendmode(bm_normal);

//reset to application surface
surface_reset_target();


draw_surface(lighting_surface, _cx, _cy);







