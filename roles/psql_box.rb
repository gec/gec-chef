name "psql_box"
description "Postgres Database Box"
all_env = [
  "recipe[build-essential]",
  "recipe[postgresql::server]"
]

run_list(all_env)
