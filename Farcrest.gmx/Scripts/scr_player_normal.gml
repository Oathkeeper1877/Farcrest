scr_getInputs();

//Normal Movement

//Sprinting
spd = 3;
var sprintSt = 0.35;
if (shift && moving && stBuffer == false){
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

//Fixes
if (akey && dkey || dkey && akey) {//Moving Left+Right
    dir = 1.5;
}
if (wkey && skey || skey && wkey) { //Moving Up+Down
    dir = 1.5;
}
if (akey && skey || skey && akey) { //Moving Left+Down
    dir = 1;
}
if (wkey && akey && dkey) { //Alt Up Fix
    dir = 0.5;
}
if (skey && akey && dkey) { //Alt Down Fix
    dir = 1.5;
}
if (wkey && akey && skey && dkey) { //All Fix
    dir = 1.5;
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

scr_playerAnim();
scr_physCollisions();
