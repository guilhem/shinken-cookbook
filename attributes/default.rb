case node['platform_family']
when 'smartos', 'rhel', 'debian', 'fedora'
  default['shinken']['install_method'] = 'package'
else
  default['shinken']['install_method'] = 'source'
end

default['shinken']['python_pkgs'] = value_for_platform_family(
  "debian" => ["python-pycurl"],
  "rhel" => [],
  "fedora" => [],
  "freebsd" => [],
  "smartos" => [],
  "default" => []
)
