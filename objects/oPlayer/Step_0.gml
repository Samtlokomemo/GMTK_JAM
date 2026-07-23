var _up     = keyboard_check(ord("W"));
var _left   = keyboard_check(ord("A"));
var _down   = keyboard_check(ord("S"));
var _right  = keyboard_check(ord("D"));

var _moving = _right - _left != 0 || _down - _up != 0;

var _dir = point_direction(0, 0, _right - _left, _down - _up);


if(_left){
    image_xscale = -1;
}else if(_right){
    image_xscale = 1;
}


hspd = lengthdir_x(spd * _moving, _dir);
x+=hspd;

vspd = lengthdir_y(spd * _moving, _dir);
y+=vspd;

