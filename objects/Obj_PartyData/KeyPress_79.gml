    var next_index = array_length(global.activeParty);
    if (next_index < array_length(global.party))
    {
        array_push(global.activeParty, global.party[next_index]);
        show_debug_message("Added " + global.party[next_index].name + " to active party.");
    }
    else
    {
        show_debug_message("All members already active.");
    }