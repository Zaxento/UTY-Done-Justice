	var xx, yy, imgspeed, explosion, __depth;
	xx = x;
	yy = y;
	imgspeed = 0.5;
	__depth = "autodepth";
	if (argument_count > 0)
	    xx = argument[0];
	if (argument_count > 1)
	    yy = argument[1];
	if (argument_count > 2)
	    imgspeed = argument[2];
	if (argument_count > 3)
	    __depth = argument[3];
	if scr_checkresolution()
	{
	    xx -= 18;
	    yy -= 25;
	}

	explosion = instance_create(xx, yy, obj_badexplosion);
	explosion.image_speed = imgspeed;
	if (__depth != "autodepth")
	{
	    explosion._depth = __depth;
	    explosion.autodepth = false;
	}

	return explosion;
