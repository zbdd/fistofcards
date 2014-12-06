nodes = argument0;
toadd = argument1;

// Create new instance.
var newnode = instance_create(x, y, toadd);
newnode.state = 'draw';

// Scale this puppy.
newnode.image_xscale = 0.5;
newnode.image_yscale = 0.5;

ds_list_add(nodes, newnode);
