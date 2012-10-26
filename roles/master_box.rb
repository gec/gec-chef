name "master_box"
description "Linux box that does everything"
all_env = [
  "role[unix_box]",
  "role[java_haver]",
  "role[qpid_box]",
  "role[psql_box]",
  "role[build_machine]"
]

run_list(all_env)
