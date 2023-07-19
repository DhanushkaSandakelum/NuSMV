nusmv -int
read_model -i simple_mutual_exclusion.SMV
flatten_hierarchy
encode_variables
build_model
pick_state -i
simulate -i -k 4
print_reachable_states -v
