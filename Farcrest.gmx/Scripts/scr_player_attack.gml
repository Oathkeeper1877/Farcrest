scr_getInputs();
scr_physCollisions();
//Creating Hitbox
    if (delayTime == -1) {
    delayTime = 20;
    }

    if (delayTime != -1) {
        delayTime -= 1;
    }
    
    if (delayTime == 10 && dir == 0.5) {instance_create(x, y-32, obj_hitbox); sprite_index = spr_playerAxeSwingBack;} //Facing Up
    if (delayTime == 10 && dir == 1.0) {instance_create(x-32, y, obj_hitbox); sprite_index = spr_playerAxeSwingLeft;} //Facing Left
    if (delayTime == 10 && dir == 1.5) {instance_create(x, y+32, obj_hitbox); sprite_index = spr_playerAxeSwing;} //Facing Down
    if (delayTime == 10 && dir == 0.0) {instance_create(x+32, y, obj_hitbox); sprite_index = spr_playerAxeSwingRSide;} //Facing Right

    if (delayTime == -1) {state = states.normal;}
