

package "qpidd" do
  case node[:platform]
  when "centos","redhat","fedora","suse"
    package_name "qpid-cpp-server"
  when "debian","ubuntu"
    package_name "qpidd"
  when "arch"
    package_name "qpidd"
  end 
  action :install
end

package "qpid-tools"

service "qpidd" do
  service_name "qpidd"
  supports :restart => true, :start => true, :stop => true
end

cookbook_file node[:qpidd][:config_file] do
  source "qpidd.conf"
  mode 0755
  owner "root"
  group "root"
end

cookbook_file node[:qpidd][:acl_file] do
  source "qpidd.acl"
  mode 0755
  owner "root"
  group "root"
  notifies :restart, "service[qpidd]", :immediately
end
