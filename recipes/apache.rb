package 'httpd' do
  action :install
  end

%w[/var /var/www /var/www/apache /var/log].each do |path|
  directory path do
#  directory '/var/www/apache' do
    action :create
    owner 'root'
    group 'root'
    mode '0755'

  end
end

template '/etc/httpd/conf.d/anson.conf' do
  source 'httpdconf.erb'
  owner 'root'
  group 'root'
  mode '0644'
#  notifies :restart,:delayed
end

Cookbook_file '/etc/httpd/conf.d/test.txt' do
  source 'test.txt'
  owner 'root'
  group 'root'
  mode '0644'
#  notifies :restart,:delayed
end
