//Input
wkey = keyboard_check(ord('W')) || keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0);
akey = keyboard_check(ord('A')) || keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0);
skey = keyboard_check(ord('S')) || keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0);
dkey = keyboard_check(ord('D')) || keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);
ekey = keyboard_check(ord('E')) || gamepad_button_check_pressed(0, gp_face1);
shift = keyboard_check(vk_lshift) || gamepad_button_check(0, gp_face3);
invLeft = keyboard_check_pressed('<') || gamepad_button_check_pressed(0, gp_shoulderl);
invRight = keyboard_check_pressed('>') || gamepad_button_check_pressed(0, gp_shoulderr);
moving = (vspd != 0 || hspd != 0);
nokey = (!wkey && !akey && !skey && !dkey);
sprinting = moving && shift;
