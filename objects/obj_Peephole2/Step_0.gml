
image_alpha += 0.04

if spacePress >= 2
{
fade -= 0.04
image_alpha = fade
}

if (fade = 0)
{
instance_destroy(self)		
}

