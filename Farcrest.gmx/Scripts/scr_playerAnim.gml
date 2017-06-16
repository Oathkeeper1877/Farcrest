scr_getInputs();
image_speed = 0.5;
if (moving) {
    //Normal
    if (dir = 0) { //Right
    sprite_index = spr_playerwalkingR;
    }
    if (dir = 0.5) { //Up
    sprite_index = spr_playerwalkingB;
    }
    if (dir = 1) { //Left
    sprite_index = spr_playerwalkingL;
    }   
    if (dir = 1.5) { //Down
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
