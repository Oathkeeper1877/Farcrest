for (i = 0; i < maxItems; i++) {
    if (global.inventory[i] = -1) { //If slot i is empty
        global.inventory[i] = argument0;
        return(1);
    }
}
return(0);
