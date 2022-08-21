// Logic which takes input from player

var _char = keyboard_lastchar; // Default variable that holds the last character that was pressed.

//Detect if any key was pressed

if (keyboard_check_pressed(vk_anykey)){
    if(string_letters(_char)!=""){
        grid[currentCell][currentLine].char =string_upper(_char);
		if(currentCell<width){
		    currentCell++;
		}
		if(currentCell == width){
		    currentCell = 0;
			currentLine++;
		}
		if(currentLine== height){
		currentLine = 0;
		currentCell = 0;
		}
	}
}

