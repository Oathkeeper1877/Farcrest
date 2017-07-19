/// inv_remove_item(x, y);

var xx = argument[0];
var yy = argument[1];

//Check for out-of-range
if (xx != median(0, xx, obj_inventory.width-1) || yy != median(0, yy, obj_inventory.height-1)) {
    show_debug_message("The x and y are outside of the range.");
    exit;
}

// Get the item count
var item_count = obj_inventory.count[# xx, yy];

// Make sure we have items
if (item_count > 0) {
    // Take 1 from the item count
    obj_inventory.count[# xx, yy]--;
    
    // Get access to remove item 
    var remove_item = obj_inventory.box[# xx, yy];
    
    // Check for last item
    if (item_count == 1) {
        // Set item box to empty
        obj_inventory.box[# xx, yy] = item.none;
    }
    
    // Return item removed
    return remove_item;
    
} else if (item_count == 0) {
    // Return none
    show_debug_message("There was not an item at that location.")
    return item.none;
} else {
    // Our item count is less than zero error
    // Error
    show_error("The item count is less than 0", false)   
}
