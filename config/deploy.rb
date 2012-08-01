require "bundler/capistrano"

server "vissul.com", :web, :app, :db, primary: true

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

after "deploy", "deploy:cleanup" # keep only the last 5 releases

namespace :deploy do


end
