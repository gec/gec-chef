name "build_machine"
description "Build machine with Maven etc."

default_attributes :maven => { :version => 3 }

all_env = [
  "recipe[build-essential]",
  "role[unix_box]",
  "role[qpid_box]",
  "role[psql_box]",
  "role[java_haver]",
  "recipe[maven]",
  "recipe[git]",
  "recipe[protoc]",
  "recipe[reefdb]"
]

run_list(all_env)
