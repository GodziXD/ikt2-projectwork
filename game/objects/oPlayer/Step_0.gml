up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))

moveh = right - left
movev = down - up

hsp = moveh * hmvs
vsp = movev * vmvs

if vsp != 0
	if vsp > 0
		lastv = walkf
	if vsp < 0
		lastv = walkb

if hsp == 0 && vsp == 0
sprite_index = standf

if !place_meeting(x+hsp,y,oWall)
{
	x = x + hsp
}


if !place_meeting(x,y+vsp,oWall)
{
	y = y + vsp
}

if hsp > 0
{
image_xscale = -1
sprite_index = walks
}

if hsp < 0
{
image_xscale = 1
sprite_index = walks
}

if vsp != 0
{
	sprite_index = lastv
}