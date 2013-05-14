#
# Cookbook Name:: smartos
# Recipe:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe "users"

users_manage "root" do
  group_id 0
  action :create
end

service 'name-service-cache' do
  action :disable
  supports :enable => true, :disable => true, :restart => true
end

