
 default[:qpidd][:config_dir] = "/etc/qpid/"

case node[:platform]
when "centos","redhat","fedora","suse"
  default[:qpidd][:config_file] = "/etc/qpidd.conf"
when "debian","ubuntu"
  default[:qpidd][:config_file] = "#{default[:qpidd][:config_dir]}/qpidd.conf"
end

default[:qpidd][:acl_file] = "#{default[:qpidd][:config_dir]}/qpidd.acl"
