include_recipe 'git'
include_recipe 'apache2'

environmetnOverride = data_bag_item('demo', 'environment').to_hash rescue {}

if environmetnOverride
  node.override[:lamp_test][:environment] = node[:lamp_test][:environment].merge(environmetnOverride)
end

template "#{node[:apache][:dir]}/sites-available/lamp-test.conf" do
  source 'lamp-test.erb'
  owner 'root'
  group node[:apache][:root_group]
  mode '0644'
  notifies :restart, 'service[apache2]'
end

apache_site 'lamp-test' do
  enable true
end

deploy_revision 'lamptest' do
  revision 'master'

  repository 'https://github.com/guywithnose/lamp-test.git'

  deploy_to '/var/www/lamp-test'

  purge_before_symlink.clear()
  create_dirs_before_symlink.clear()
  symlink_before_migrate.clear()
  symlinks.clear()
end
