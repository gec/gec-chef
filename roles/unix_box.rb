name "unix_box"
description "Common utilities for service machines (that one might ssh into to investigate)"
all_env = [
  "recipe[apt]",
  "recipe[build-essential]",  # It's almost never worth not installing this
  "recipe[htop]",
  "recipe[nano]",
  "recipe[screen]"
]

run_list(all_env)
