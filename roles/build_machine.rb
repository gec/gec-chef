name "build_machine"
description "Build machine with Maven etc."

default_attributes :maven => { :version => 3 }

all_env = [
  "recipe[build-essential]",
  "role[java_haver]",
  "recipe[maven]"
]

run_list(all_env)
