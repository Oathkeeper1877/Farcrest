scr_getInputs();

if (moving) {
    if (stBuffer == false) {image_speed = 0.6;}
    if (!sprinting || stBuffer == true) {image_speed = 0.5;}
    if (still) {image_speed = 0.25;}
    //Normal
    if (dir = 0) { //Right
    sprite_index = spr_playerwalkingR;
    }
    else if (dir = 0.5) { //Up
    sprite_index = spr_playerwalkingB;
    }
    else if (dir = 1) { //Left
    sprite_index = spr_playerwalkingL;
    }   
    else if (dir = 1.5) { //Down
    sprite_index = spr_playerwalkingF;
    }
} else {
    if (dir = 0) { //Right
    sprite_index = spr_playerRight;
    }
    else if (dir = 0.5) { //Up
    sprite_index = spr_playerBack;
    }
    else if (dir = 1) { //Left
    sprite_index = spr_playerLeft;
    }   
    else if (dir = 1.5) { //Down
    sprite_index = spr_player;
    }
}
