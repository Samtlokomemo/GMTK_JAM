draw_set_halign(fa_center);
draw_set_font(fonte);
if(!safeArea){
   draw_text_transformed_colour(window_get_width() / 2, 30, round(time_source_get_time_remaining(global.gameTimer)), 3, 3, 0, c_red, c_red, c_red, c_red, 1);
}