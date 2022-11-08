visible = false
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var move = key_right - key_left;

hsp = move * walksp;
var move = key_down - key_up;

vsp = move * walksp;

if place_meeting(x,y,Object5)
{
	y = y + 6
	
}
 
 if (place_meeting(x+hsp,y,Object7))
 {
	 while (!place_meeting(x+sign(hsp),y,Object7))
	{
		x = x + sign(hsp);
	}
   hsp = 0
 }
 
  if (place_meeting(x,y+vsp,Object7))
 {
	 while (!place_meeting(x,y+sign(vsp),Object7))
	{
		y = y + sign(vsp);
	}
   vsp = 0
 }
 
 x = x + hsp;
 y = y + vsp
 
 global.X = x
 global.Y = y