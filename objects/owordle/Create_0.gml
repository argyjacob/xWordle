/// Create all the variables and data that we need

width = 5 // Cells 
height = 6 // Tries

cellsize = 120 // size of each cell in pixel size
cellGap = 10   // Size of separation between each cell

// THE WINNING WORD
targetWord = "TTSSD"

currentLine = 0;
currentCell = 0;

// Structure
grid = [];


for (var _x = 0 ; _x < width ; _x++){
	for (var _y = 0 ; _y < height ; _y++){
	
	// Code to draw each cell is within these 2 for loops
    grid[_x][_y] = new Cell();
	
	}
}


// Methods

checkLine = function () {
    var _formedWord = "";
	
	for (var _charIndex = 0 ; _charIndex < width ; _charIndex++){
	    _formedWord += grid[_charIndex][currentLine].char;
		
		// Check if character is correct
		var _correctChar = string_char_at(targetWord,_charIndex + 1); 
		var _userInputChar = string_char_at(_formedWord,_charIndex + 1);
		// String functions in Gamemaker start at index 1 hence (_charIndex + 1)
		if(_userInputChar == _correctChar){
		    grid[_charIndex][currentLine].state=cellState.Correct;
		}
		else if(string_pos(_userInputChar,targetWord)>0){
		    grid[_charIndex][currentLine].state=cellState.Exists;
		}
		else{
		    grid[_charIndex][currentLine].state=cellState.Wrong;
		}
	}
	
	// You Win
	if(_formedWord == targetWord){
		win();
	}
	else if (currentLine< (height-1)){
		currentLine++;
	}
	//Lines are  over
	else{
	   loss();
	}	
}

win = function(){
}

loss = function(){
}