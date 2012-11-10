
external_postgres = {
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
    #rs_config.vm.forward_port 5672, 5672
    #rs_config.vm.forward_port 5432, 5432

    rs_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_support")
      
      chef.json = {
        :postgresql => {
          :version => "9.1",
          :hba => [{"address" => "0.0.0.0/0", "method" => "md5"}],
          :listen_addresses => "*"
        }
      }
    end 

  end

  config.vm.define :reef_cluster_1 do |rc1_config|

    rc1_config.vm.network :hostonly, "192.168.2.11"
    rc1_config.vm.box = "precise64"

    rc1_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_node")
      
      chef.json = {
        :postgresql => {
          :version => "9.1",
          :hba => [{"address" => "0.0.0.0/0", "method" => "md5"}],
          :listen_addresses => "*"
        }
      }
    end 

  end

  config.vm.define :reef_cluster_2 do |rc2_config|

    rc2_config.vm.network :hostonly, "192.168.2.12"
    rc2_config.vm.box = "precise64"

    rc2_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.roles_path = ['roles']
      chef.add_role("reef_node")
      
      chef.json = {
        :postgresql => {
          :version => "9.1",
          :hba => [{"address" => "0.0.0.0/0", "method" => "md5"}],
          :listen_addresses => "*"
        }
      }
    end 

  end
	
end
