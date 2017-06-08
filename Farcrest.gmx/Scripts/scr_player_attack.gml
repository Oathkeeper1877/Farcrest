scr_getInputs();
scr_physCollisions();
//Creating Hitbox
    if (delayTime == -1) {
    delayTime = 40;
    }

    if (delayTime != -1) {
        delayTime -= 1;
    }
    
    if (delayTime == 20 && dir == 0.5) {instance_create(x, y-64, obj_hitbox)} //Facing Up
    if (delayTime == 20 && dir == 1.0) {instance_create(x-64, y, obj_hitbox)} //Facing Left
    if (delayTime == 20 && dir == 1.5) {instance_create(x, y+64, obj_hitbox)} //Facing Down
    if (delayTime == 20 && dir == 0.0) {instance_create(x+64, y, obj_hitbox)} //Facing Right

    if (delayTime == -1) {state = states.normal;}
