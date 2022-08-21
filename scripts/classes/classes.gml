
function Cell() constructor {

	char = ""
	state = cellState.Inactive

    static Draw =	function (_x,_y, _size){
	  var _colour = global.colours[state]
	  draw_set_color(_colour)
	  draw_rectangle(_x,_y, _x+ _size, _y+_size ,false)
      draw_set_color(c_white)

      // Draw Character
	  draw_set_font(Font1);
	  draw_set_halign(fa_center);
	  draw_set_valign(fa_middle);
	  draw_text(_x+_size/2,_y+_size/2,char);
	  //draw_set_halign(fa_left);
	  //draw_set_valign(fa_right);

	}
}

enum cellState{

Inactive,
Wrong,
Exists,
Correct

}


// Now we need to setup the colors for each state 
// without having to figure it out in the Draw function.
global.colours[cellState.Inactive] = c_black
global.colours[cellState.Wrong] = c_dkgray
global.colours[cellState.Exists] = c_yellow
global.colours[cellState.Correct] = c_green



