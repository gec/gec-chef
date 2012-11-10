name "reef_node"
description "For running reef software"
all_env = [
  "role[unix_box]",
  "role[qpid_box]",
  "role[psql_box]",
  "role[java_haver]",
  "recipe[reefdb]",
  "recipe[reef]"
]

run_list(all_env)
