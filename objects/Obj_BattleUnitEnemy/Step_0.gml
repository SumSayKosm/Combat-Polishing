event_inherited();
if (hp <= 0)
{
	image_blend = c_red;
	image_alpha -= 0.01;
}

var slidingSpeed = 0.1;

x = lerp(x, targetX, slidingSpeed);
y = lerp(y, targetY, slidingSpeed);