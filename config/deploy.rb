lock '3.2.1'

SSHKit.config.command_map[:rake] = "bundle exec rake"

set :application, 'telephone'
set :repo_url, 'git@github.com:voleoo/telephone.git'
set :branch, "master"

set :use_sudo, false
set :deploy_via, :copy
set :keep_releases, 10

set :rvm_type, :user
set :default_env, { rvm_bin_path: '~/.rvm/bin' }

set :linked_files, %w{ config/database.yml config/application.yml }
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

namespace :deploy do

  # desc 'Restart application'
  # task :restart do
  #   on roles(:app), in: :sequence, wait: 5 do
  #     # Your restart mechanism here, for example:
  #     # execute :touch, release_path.join('tmp/restart.txt')
  #   end
  # end

  # after :publishing, :restart

  # after :restart, :clear_cache do
  #   on roles(:web), in: :groups, limit: 3, wait: 10 do
  #     # Here we can do anything such as:
  #     # within release_path do
  #     #   execute :rake, 'cache:clear'
  #     # end
  #   end
  # end

end
