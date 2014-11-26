state = argument0;
source = argument1;
count = 0;

for (i = 0; i < ds_list_size(source); i++) {
    if (source[| i].state == state) {
        count++;
    }
}

return count;
