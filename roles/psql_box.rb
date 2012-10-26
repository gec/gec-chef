name "psql_box"
description "Postgres Database Box"
all_env = [
  "recipe[postgresql::server]"
]

run_list(all_env)
