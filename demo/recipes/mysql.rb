mysqlAuth = data_bag_item('demo', 'mysql')
if mysqlAuth['password'] != ''
  node.override[:lamp_test][:environment][:MYSQL_PASSWORD] = mysqlAuth['password']
end

mysql_service 'demo' do
  port '3306'
  version '5.6'
  data_dir '/data'
  initial_root_password node[:lamp_test][:environment][:MYSQL_PASSWORD]
  action [:create, :start]
end

bash "Restart mysql" do
  code 'service mysql restart || true'
end
