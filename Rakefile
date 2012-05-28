#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

#if ENV['TRAVIS_RUBY_VERSION']
#  # apt-get install of chrome-browser is currently 404ing on travis,
#  # so no cuke for now
#  task :default => ['spec', 'jasmine:headless']
#else
task :default => ['spec', 'jasmine:headless', 'cucumber']
#end

Misadventure::Application.load_tasks

