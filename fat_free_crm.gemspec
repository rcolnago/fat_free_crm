# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'fat_free_crm/version'

Gem::Specification.new do |s|
  s.name = 'fat_free_crm'
  s.authors = ['Michael Dvorkin', 'Ben Tillman', 'Nathan Broadbent', 'Stephen Kenworthy']
  s.summary = 'Fat Free CRM'
  s.description = 'Fat Free CRM'
  s.files = `git ls-files`.split("\n")
  s.version = FatFreeCRM::Version

  s.add_development_dependency 'pg',           '~> 0.12.2'
  s.add_development_dependency 'mysql2',       '~> 0.3.11'
  s.add_development_dependency 'sqlite3' ,     '~> 1.3.5'
  s.add_development_dependency 'rspec-rails',  '~> 2.8.1'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'combustion'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'therubyracer'
  s.add_development_dependency 'spork'
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'factory_girl'
  s.add_dependency 'rails',               '~> 3.2.1'
  s.add_dependency 'prototype-rails'
  s.add_dependency 'authlogic',           '~> 3.1.0'
  s.add_dependency 'acts_as_commentable', '~> 3.0.1'
  s.add_dependency 'acts-as-taggable-on', '~> 2.2.1'
  s.add_dependency 'haml',                '~> 3.1.3'
  s.add_dependency 'paperclip',           '~> 2.5.2'
  s.add_dependency 'will_paginate',       '~> 3.0.2'
  s.add_dependency 'acts_as_list',        '~> 0.1.4'
  s.add_dependency 'simple_form',         '~> 1.5.2'
  s.add_dependency 'ffaker',              '>= 1.12.0'
  s.add_dependency 'uglifier'
  s.add_dependency 'paper_trail'
end
