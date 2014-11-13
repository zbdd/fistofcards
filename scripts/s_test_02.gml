enemies = ds_list_create();
current_cards = ds_list_create();
var s_b = instance_create(x,y,o_s_blood);
var c_basic = instance_create(x,y,o_c_basic);
var c_btr = instance_create(x,y,o_c_b_t_r);
var e_sword = instance_create(x,y,o_e_sword);

ds_list_add(current_cards, s_b);
ds_list_add(current_cards, c_basic);
ds_list_add(current_cards, c_btr);
ds_list_add(current_cards, e_sword);

s_init(self, current_cards, enemies);
