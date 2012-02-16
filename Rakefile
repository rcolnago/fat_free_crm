#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'FatFreeCRM'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

#~ load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

#~ Rake::Task[:default].clear

namespace :spec do
  desc "Preparing test env"
  task :prepare do
    tmp_env = Rails.env
    Rails.env = "test"
    Rake::Task["crm:copy_default_config"].invoke
    puts "Running initial migrations..."
    puts "Preparing test database..."
    Rake::Task["db:schema:load"].invoke
    Rake::Task["crm:settings:load"].invoke
    Rails.env = tmp_env
  end
end

Rake::Task["spec"].prerequisites.clear
Rake::Task["spec"].prerequisites.push("spec:prepare")
task :default => ['spec']

