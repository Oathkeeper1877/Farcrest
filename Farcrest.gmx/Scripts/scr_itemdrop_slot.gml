//scr_itemdrop_slot(slot)

if (global.inventory[argument0] != -1) {
    global.inventory[argument0] = -1;
    return(1);
}
return(0);
