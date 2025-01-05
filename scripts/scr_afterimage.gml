genafterimage = instance_create(x, y, obj_genafterimage);
genafterimage.sprite_index = sprite_index;
genafterimage.image_index = image_index;
genafterimage.size = image_xscale;
genafterimage.size = image_yscale;
genafterimage.image_angle = image_angle;
genafterimage.image_blend = image_blend;
genafterimage.image_speed = 0;
genafterimage.depth = depth + 1;

if (argument0 > 0)
    genafterimage.alphadown = 1 / argument0;

if (argument1 > 0)
    genafterimage.growth = argument1;

return genafterimage;
