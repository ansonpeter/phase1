#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['test1']['servername'] = 'prod.anson'
include_recipe 'test1::apache'
