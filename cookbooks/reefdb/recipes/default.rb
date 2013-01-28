
execute "reefdb_init" do
   user "postgres"
   command "psql < /tmp/dev_postgres_init.sql"
   action :nothing
end

 
cookbook_file "/tmp/dev_postgres_init.sql" do
  source "dev_postgres_init.sql"
  mode 0755
  owner "root"
  group "root"
  notifies :run, resources(:execute => "reefdb_init")
end