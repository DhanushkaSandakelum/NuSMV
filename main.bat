nusmv -int
read_model -i simple_mutual_exclusion.SMV
flatten_hierarchy
encode_variables
build_model
pick_state -i
simulate -i -k 4
print_reachable_states -v


--- SHORT CUT ---
nusmv -int
read_model -i traffic_light.SMV
go
pick_state -i
print_reachable_states -v
simulate -i -k 4

--- CHECK THE MODEL SPECIFICATIONS ---
Transition system satisfies a requirement means all its executions satisfy the requirement

Requirement type 1: G (Global)
For instance if G (x >= 0) means if the considition holds globally.
check_ltlspec -p "G (x >=0)"
check_ltlspec -p "G (request = FALSE)"

Requirement type 2: F (Future)
For instance if F (x >= 5) means to check whether condition holds at somepoint in the execution.
check_ltlspec -p "F (x >=5)"
check_ltlspec -p "F (request = TRUE)"