role :app, %w{leoo@192.168.1.129}
role :web, %w{leoo@192.168.1.129}
role :db,  %w{leoo@192.168.1.129}

server '192.168.1.129', user: 'leoo', roles: %w{web app}

set :deploy_to, '/home/leoo/sites/telephone'
set :rvm_ruby_version, 'ruby-2.1.3@telephone --create'
set :rails_env, "production"