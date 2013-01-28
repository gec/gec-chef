
include_recipe "simple_iptables"

simple_iptables_rule "system" do
  rule "--proto tcp --dport 5432"
  jump "ACCEPT"
end
