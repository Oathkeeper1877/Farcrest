///Player Stats
//Control
if (playerNm < 0) playerNm = 0;
if (playerNm > maxPlayerNm) playerNm = maxPlayerNm;
if (playerHp < 0) playerHp = 0;
if (playerHp > maxPlayerHp) playerHp = maxPlayerHp;
if (playerSt < 0) playerSt= 0;
if (playerSt > maxPlayerSt) playerSt = maxPlayerSt;



//Nourishment Depletion
if (nmDelay == -1) {
    nmDelay = 600;
    playerNm -= 1;
    } 
if (nmDelay != -1) { 
    nmDelay -= 1;
}


//Health Depletion from Nourishment
if (playerNm <= 0) {
    if (hpDelay == -1) {
        hpDelay = 40;
        playerHp -= 1;
    }
}

//Healing from almost full Nourishment
if (playerNm >= 90) {
        if (hpDelay == -1) {
            hpDelay = 80;
            playerHp += 2;
        }
}
else if (playerNm >= 80) {
        if (hpDelay == -1) {
            hpDelay = 80;
            playerHp += 1;
        }
}

if (hpDelay != -1) {
        hpDelay -= 1;
    }



//Stamina Control
if (playerSt < maxPlayerSt) {
     if (stDelay == -1) {
        stDelay = 10;
        playerSt += 1;
    }
}
if (stDelay != -1) {
        stDelay -= 1;
    } 
