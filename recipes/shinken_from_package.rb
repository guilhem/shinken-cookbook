
include_recipe 'python'

node['shinken']['python_pkgs'].each do |pkg|
  package pkg
end

user 'shinken' do
  comment 'Shinken system user account'
  system true
  shell '/bin/false'
end

python_pip 'shinken'

service 'shinken' do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end
