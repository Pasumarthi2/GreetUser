#
# Cookbook Name:: GreetUser
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd'

service 'httpd' do
  action [:enable, :start]
  end

  template '/var/www/html/index.html' do
    source 'index.html.erb'
  end

  service 'iptables' do
      action :stop
  end

