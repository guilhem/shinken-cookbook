#
# Cookbook Name:: shinken
# Recipe:: shinken
#

include_recipe "shinken::shinken_from_#{node['shinken']['install_method']}"
