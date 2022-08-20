
for (var _x = 0 ; _x < width ; _x++){

	for (var _y = 0 ; _y < height ; _y++){
        // Code to draw each cell is within these 2 for loops
		var _drawX = x + _x * (cellsize + cellGap)
	    var _drawY = y + _y * (cellsize + cellGap)
	    
        //Draw cell
		var _cell = grid[_x][_y]
		_cell.Draw(_drawX,_drawY,cellsize)
		
		//Draw outline of each cell
		draw_rectangle(_drawX,_drawY, _drawX+cellsize,_drawY+cellsize,true)

	}

}