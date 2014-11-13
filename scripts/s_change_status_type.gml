to = argument0;
from = argument1;
source = argument2;
type = argument3;
updated = 0;

for (i = 0; i < ds_list_size(source); i++) {
    if (source[| i].state == from && source[| i].type = type) {
        source[| i].state = to;
        updated++;
    }
}

return updated;
