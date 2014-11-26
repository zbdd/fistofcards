global.tests_passed = 0;
global.tests = 0;

enemies = ds_list_create();
current_cards = ds_list_create();

var new_blood = instance_create(x,y,o_s_blood);
var new_chain_card = instance_create(x,y,o_c_basic);

ds_list_add(current_cards, new_blood);
ds_list_add(current_cards, new_chain_card);

t_conduit = s_init(self, current_cards, enemies);

// Test 1.
with (t_conduit) {
    event_perform(ev_keypress, ord("1"));
    
    global.tests++;
    if (chains[| 0].chain[| 0].name == "blood source") {
        global.tests_passed++;
    }
}
   /*
global.tests++;
if (ds_list_size(t_conduit.chains[| 0].chain[| 0] == 1)) {
    global.tests_passed++;
}

// Test 2.
with (t_conduit) {    
    event_perform(ev_keypress, ord("2"));
}

global.tests++;
if (ds_list_size(t_conduit.chains[| 0].chain[| 0] == 1)) {
    global.tests_passed++;
}

// Test 3.
with (t_conduit) {     
    event_perform(ev_keypress, ord("2"));
}

global.tests++;
if (ds_list_size(t_conduit.chains[| 0].chain[| 0] == 1)) {
    global.tests_passed++;
}
*/
// Summary.
show_debug_message("Tests Run:");
show_debug_message(global.tests);
show_debug_message("Tests Passed:");
show_debug_message(global.tests_passed);
show_debug_message("Tests Failed:");
show_debug_message(global.tests-global.tests_passed);
