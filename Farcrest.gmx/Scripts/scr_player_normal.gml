scr_getInputs();

//Normal Movement

//Sprinting
spd = 2;
var sprintSt = 0.35;
if (shift && moving && stBuffer == false) {
    if (playerSt >= sprintSt) {
        spd = 5;
        playerSt -= sprintSt;
    }
}
if (playerSt < sprintSt) {
    stBuffer = true;    
}
if (playerSt >= 10) {
    stBuffer = false;
}

 
//Moving Up 
if (wkey) {
    dir = 0.5;
    vspd = -spd;
}

//Moving Left
if (akey) {
    dir = 1;
 hspd = -spd;
}

//Moving Down 
if (skey) {
    dir = 1.5;
    vspd = spd;
}

//Moving Right 
if (dkey) {
    dir = 0;
    hspd = spd;
}



//Check for not moving 
if ((!dkey && !akey) || (dkey && akey)) {
    hspd = 0;
}
if ((!wkey && !skey) || (wkey && skey)) {
    vspd = 0;
}

if (ekey) {
    hspd = 0;
    vspd = 0;
    state = states.attack;
}


scr_physCollisions();
