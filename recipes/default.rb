#
# Cookbook Name:: radicale
# Recipe:: default
#

include_recipe "users"

package "radicale"

service "radicale"

template "/etc/radicale/config"

template "/etc/radicale/users"
