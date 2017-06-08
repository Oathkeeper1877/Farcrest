//Horizontal Collisions
if (place_meeting(x + hspd, y, obj_collision)) {
    while (!place_meeting(x + sign(hspd), y, obj_collision)) {
        x += sign(hspd);
    }
    hspd = 0;
}

//Move Horizontally
x += hspd;

//Vertical Collisions
if (place_meeting(x, y + vspd, obj_collision)) {
    while (!place_meeting(x, y + sign(vspd), obj_collision)) {
        y += sign(vspd);
    }
    vspd = 0;
}


//Move Vertically
y += vspd;




