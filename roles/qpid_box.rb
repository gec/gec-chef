name "qpid_box"
description "Qpid Broker"
all_env = [
  "recipe[qpidd]"
]

run_list(all_env)
