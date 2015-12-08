
script 'run_experiment' do
  cwd "/tmp"
  user node['collectd']['user']
  group node['collectd']['group']
  interpreter "bash"
  code <<-EOM

  EOM
end

