
shared_json = {
  :postgresql => {
    :version => "9.1",
    :hba => [{"address" => "0.0.0.0/0", "method" => "md5"}],
    :listen_addresses => "*"
  }
}


Vagrant::Config.run do |config|

  config.vm.define :reef_support do |rs_config|

    rs_config.vm.network :hostonly, "192.168.2.10"
    rs_config.vm.box = "precise64"
    rs_config.vm.forward_port 22, 2222

    rs_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_support")
      
      chef.json = shared_json
    end 

  end

  config.vm.define :reef_cluster_1 do |node_config|

    node_config.vm.network :hostonly, "192.168.2.11"
    node_config.vm.box = "precise64"
    node_config.vm.forward_port 22, 2200

    node_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_node")
      
      chef.json = shared_json
    end 

  end

  config.vm.define :reef_cluster_2 do |node_config|

    node_config.vm.network :hostonly, "192.168.2.12"
    node_config.vm.box = "precise64"
    node_config.vm.forward_port 22, 2201

    node_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_node")
      
      chef.json = shared_json
    end 

  end

  config.vm.define :reef_cluster_3 do |node_config|

    node_config.vm.network :hostonly, "192.168.2.13"
    node_config.vm.box = "precise64"
    node_config.vm.forward_port 22, 2202

    node_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_node")
      
      chef.json = shared_json
    end 

  end
	
end
