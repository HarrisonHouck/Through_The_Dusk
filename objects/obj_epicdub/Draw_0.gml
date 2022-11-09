//menu background
draw_self()

//draw options
draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

for(var i = 0; i<op_length; i++){
	var _c = c_white
	if(option[i] == option[5]){
		_c = c_red
	}
	draw_text_color(96, 128+ 4*op_space * i, option[i], _c, _c, _c, _c, 1)
}
