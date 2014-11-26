var conduit = instance_create(x,y,o_conduit);

conduit.hero = argument0;
conduit.pool = argument1;
conduit.enemies = argument2;

with (conduit) {
    status = 'start';
    in_deck = ds_list_size(pool);
}

return conduit;
