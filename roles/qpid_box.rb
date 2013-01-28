name "qpid_box"
description "Qpid Broker"
all_env = [
  "recipe[qpidd]",
  "recipe[iptables-amqp]"
]

run_list(all_env)
