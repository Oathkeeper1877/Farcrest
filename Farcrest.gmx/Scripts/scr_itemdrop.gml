for (i = 0; i < maxItems; i++) {
    if (global.inventory[i] == argument0) { //If slot i contains argument 0
        global.inventory[i] = -1;
        return(1);
    }
}
return(0);
