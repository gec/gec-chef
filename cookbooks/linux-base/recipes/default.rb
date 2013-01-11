

case node[:platform]
when "centos","redhat","fedora","suse"

when "debian","ubuntu"
	
  execute "apt-get update" do
    command "apt-get update"
    ignore_failure true
    action :run
  end

  package "htop" 

end 
