// Store current HP for next frame’s comparison
var hp_previous = hp;


// Only process if HP has changed this frame
if (hp_previous != undefined && hp < hp_previous)
{
    // Switch to hurt sprite
    sprite_index = sprites.hurt;
    image_speed = 1; // ensure animation plays at normal speed
}

// If currently playing the hurt animation
if (sprite_index == sprites.hurt)
{
    // Once the hurt animation finishes, return to idle
    if (image_index >= image_number - 1)
    {
        sprite_index = sprites.idle;
        image_index = 0;
    }
}