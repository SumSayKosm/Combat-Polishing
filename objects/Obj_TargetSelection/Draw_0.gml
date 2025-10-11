// Draw Event for Obj_TargetSelectionScreen
draw_sprite_stretched(Spr_UIBox, 0, x - margin, y - margin, widthFull, heightFull);

draw_set_color(c_white);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (var i = 0; i < array_length(targetOptions); i++) {
    var lineText = targetOptions[i][0];
    if (i == hover) {
        draw_set_color(c_yellow);
        lineText = hovermarker + " " + lineText;
    } else {
        draw_set_color(c_white);
    }
    draw_text(x, y + i * heightLine, lineText);
}
