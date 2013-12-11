#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package_name = "apache2"
service_name = "apache2"
document_root = "/var/www"

if node["platform"] == "centos"
    package_name = "httpd"
    service_name = "httpd"
    document_root = "/var/www/html"
end

# install apache
package package_name do
	action :install
end

# start the apache service
# make sure the service starts on reboot
service service_name do
	action [ :start, :enable ]
end	

# write our home page
template "#{document_root}/index.html" do
    source "index.html.erb"
    mode "0644"
end
