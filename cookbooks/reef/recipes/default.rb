

ark "totalgrid-reef" do
  url node[:reef][node[:reef][:version]][:url]
  action :put
end
