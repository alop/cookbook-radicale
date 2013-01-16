#
# Cookbook Name:: radicale
# Recipe:: default
#

include_recipe "users"

users = data_bag('users')

package "radicale" do
  action :upgrade
end

if node["platform"] == "ubuntu"
  cookbook_file "/etc/init/radicale.conf" do
    source "radicale.conf"
    owner "root"
    group "root"
    mode  "0644"
end
  
service "radicale" do
  supports :status => true, :restart => true

  action :enable
end

template "/etc/radicale/config" do
  source "config.erb"
  mode  0644
  owner "root"
  group "root"

  notifies :restart, "service[radicale]"
end

template "/etc/radicale/users" do
  source "users.erb"
  mode  0644
  owner "root"
  group "root"
  variables( :users => users )

  notifies :restart, "service[radicale]"
end
