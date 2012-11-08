name "reef_support"
description "Runs database and broker for external Reef to use"
all_env = [
  "role[unix_box]",
  "role[qpid_box]",
  "role[psql_box]",
  "recipe[reefdb]"
]

run_list(all_env)
