# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require "#{RAILS_ROOT}/vendor/plugins/easypg/lib/override_rake_task.rb"

require 'rake'

DryuleCom::Application.load_tasks
