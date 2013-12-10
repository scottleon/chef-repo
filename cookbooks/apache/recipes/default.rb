#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# install apache
package "apache2" do
	action :install
end

# start the apache service
# make sure the service starts on reboot
service "apache2" do
	action [ :start, :enable ]
end	

# write our home page
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end
