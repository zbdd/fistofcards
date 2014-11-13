enemies = ds_list_create();
current_cards = ds_list_create();
var new_blood = instance_create(x,y,o_s_blood);
var new_chain_card = instance_create(x,y,o_c_basic);

ds_list_add(current_cards, new_blood);
ds_list_add(current_cards, new_chain_card);

s_init(self, current_cards, enemies);
