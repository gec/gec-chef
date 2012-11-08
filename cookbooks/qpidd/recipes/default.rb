
package "qpidd"
package "qpid-tools"

service "qpidd" do
  service_name "qpidd"
  supports :restart => true, :start => true, :stop => true
end

cookbook_file "#{node[:qpidd][:config_dir]}/qpidd.conf" do
  source "qpidd.conf"
  mode 0755
  owner "root"
  group "root"
end

cookbook_file "#{node[:qpidd][:config_dir]}/qpidd.acl" do
  source "qpidd.acl"
  mode 0755
  owner "root"
  group "root"
  notifies :restart, "service[qpidd]", :immediately
end