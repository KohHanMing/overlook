/// @description Insert description here
// You can write your code in this editor

if (is_moving_horizontally)
{
	var toMoveX = movespeed * horizontal_direction;
	if ((starting_horizontal_direction > 0 && x + toMoveX >= startX && x + toMoveX <= endX) ||
		(starting_horizontal_direction < 0 && x + toMoveX <= startX && x + toMoveX >= endX))
	{
		x += toMoveX;
	}
	else
	{
		// Make sure that the platform remains in the same position.
		if ((starting_horizontal_direction > 0 && x < startX) || (starting_horizontal_direction < 0 && x > startX))
		{
			x = startX;	 
		}
		else if ((starting_horizontal_direction > 0 && x > endX) || (starting_horizontal_direction < 0 && x < endX))
		{
			x = endX;
		}
		horizontal_direction *= -1;
	}
}

if (is_moving_vertically)
{
	var toMoveY = movespeed * vertical_direction;
	if ((starting_vertical_direction < 0 && y + toMoveY <= startY && y + toMoveY >= endY) ||
		(starting_vertical_direction > 0  && y + toMoveY >= startY && y + toMoveY <= endY))
	{
		y += toMoveY;
	}
	else
	{
		// Make sure that the platform remains in the same position.
		if ((starting_vertical_direction < 0 && y > startY) || (starting_vertical_direction > 0 && y < startY))
		{
			y = startY;	 
		}
		else if ((starting_vertical_direction < 0 && y < endY) || (starting_vertical_direction > 0 && y > endY))
		{
			y = endY;
		}
		vertical_direction *= -1;
	}
}