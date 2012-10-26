name "java_haver"
description "Linux box that runs the JDK"
all_env = [
  "recipe[java]"
]

run_list(all_env)
