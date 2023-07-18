nusmv -int
read_model -i exercise_1.SMV
flatten_hierarchy
encode_variables
build_model
pick_state -i
simulate -i -k 3
print_reachable_states -v