    if (array_length(global.activeParty) > 1)
    {
        var removed = array_pop(global.activeParty);
        show_debug_message("Removed " + removed.name + " from active party.");
    }
    else
    {
        show_debug_message("Cannot remove any more members.");
    }