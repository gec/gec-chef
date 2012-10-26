name "unix_box"
description "Common utilities for service machines (that one might ssh into to investigate)"
all_env = [
  "recipe[htop]",
  "recipe[nano]",
  "recipe[screen]",
]

run_list(all_env)
