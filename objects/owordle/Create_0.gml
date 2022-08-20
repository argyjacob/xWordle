/// Create all the variables and data that we need

width = 5 // Cells 
height = 6 // Tries

cellsize = 120 // size of each cell in pixel size
cellGap = 10   // Size of separation between each cell

// Structure
grid = [];


for (var _x = 0 ; _x < width ; _x++){
	for (var _y = 0 ; _y < height ; _y++){
	
	// Code to draw each cell is within these 2 for loops
    grid[_x][_y] = new Cell();
	
	}
}