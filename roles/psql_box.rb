name "psql_box"
description "Postgres Database Box"
all_env = [
  "recipe[build-essential]",
  "recipe[postgresql::server]",
  "recipe[iptables-psql]"
]

run_list(all_env)
