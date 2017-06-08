//Input
wkey = keyboard_check(ord('W')) || keyboard_check(vk_up);
akey = keyboard_check(ord('A')) || keyboard_check(vk_left);
skey = keyboard_check(ord('S')) || keyboard_check(vk_down);
dkey = keyboard_check(ord('D')) || keyboard_check(vk_right);
ekey = keyboard_check(ord('E'));
shift = keyboard_check(vk_lshift);
moving = (vspd != 0 || hspd != 0);
nokey = (!wkey && !akey && !skey && !dkey);
