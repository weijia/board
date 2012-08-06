require "bundler/capistrano"

server "vissul.com", :web, :app, :db, primary: true

set :ruby,""
set :elasticsearch,""

set :application, "board"
set :user, "root"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, true

set :scm, "git"
set :repository, "git@github.com:vissul/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

namespace :setup do
  taks :update_ubuntu do
    #sudo apt-get -y update
    #sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev libcurl4-openssl-dev curl git-core python-software-properties subversion libxslt-dev libxml2-dev imagemagick --fix-missing libmagickwand-dev
  end

  task :ruby do

  end

  task :mysql do

  end

  task :nginx do

  end

  task :elasticsearch do

  end
end

namespace :deploy do
  task :symlink_config ,roles: :app do
    run "cd #{current_path} & rake assets:precompile"
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update","deploy:symlink_config", "deploy:cleanup" # keep only the last 5 releases
end

namespace :watch do
  task :logs do
    stream("tail -f #{deploy_to}/#{shared_path}/log/production.log")
  end

  task :nagios do
  end
end
