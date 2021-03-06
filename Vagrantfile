
shared_json = {
  :postgresql => {
    :version => "9.1",
    :hba => [{"address" => "0.0.0.0/0", "method" => "md5"}],
    :listen_addresses => "*"
  }
}


Vagrant::Config.run do |config|

  nodes = [{ 
    :name => :reef_support,
    :ssh_port => 2222,
    :ip => "192.168.2.10",
    :role => "reef_support"
  },
  {
    :name => :reef_cluster_1,
    :ssh_port => 2200,
    :ip => "192.168.2.11",
    :role => "reef_node" 
  },
  {
    :name => :reef_cluster_2,
    :ssh_port => 2201,
    :ip => "192.168.2.12",
    :role => "reef_node" 
  },
  {
    :name => :reef_cluster_3,
    :ssh_port => 2202,
    :ip => "192.168.2.13",
    :role => "reef_node" 
  },
  {
    :name => :reef_builder,
    :ssh_port => 2223,
    :ip => "192.168.2.9",
    :role => "build_machine",
    :memory => 1024,
    :cpus => 2
  }]


  nodes.each do |n|  
    config.vm.define n[:name] do |node_config|

      node_config.vm.network :hostonly, n[:ip]
      node_config.vm.box = "precise32"
      node_config.vm.forward_port 22, n[:ssh_port]

      config.vm.customize ["modifyvm", :id, "--natdnsproxy1", "off" ]

      config.vm.customize ["modifyvm", :id, "--memory", n[:memory]] if n[:memory]
      config.vm.customize ["modifyvm", :id, "--cpus", n[:cpus]] if n[:cpus]

      node_config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = ['cookbooks']
        chef.roles_path = ['roles']
        chef.add_role(n[:role])
        
        chef.json = shared_json
      end 
    end
  end

	
end
