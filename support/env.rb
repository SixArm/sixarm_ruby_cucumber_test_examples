# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
require 'cucumber/formatter/unicode'
require 'cucumber/web/tableish'
require 'cucumber/rails/rspec'

# Here are choices for using fixtures:
# https://github.com/aslakhellesoy/cucumber/wiki/fixtures
#
# Use this code to load all fixtures from spec/fixtures before each scenario:
#
#   Before do
#     Fixtures.reset_cache
#     fixtures_folder = File.join(RAILS_ROOT, 'spec', 'fixtures')
#     fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
#     Fixtures.create_fixtures(fixtures_folder, fixtures)
#   end
#
# Use this code to get transactional fixtures:
#
#   # Sets up Rails environment for Cucumber  transactional fixtures
#   # If you leave this to true, you can turn off traqnsactions on a
#   # per-scenario basis, simply tagging it with @no-txn
#   Cucumber::Rails::World.use_transactional_fixtures
#
#   # Seed the DB
#   Fixtures.reset_cache  
#   fixtures_folder = File.join(RAILS_ROOT, 'spec', 'fixtures')
#   fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
#   Fixtures.create_fixtures(fixtures_folder, fixtures)

Cucumber::Rails::World.use_transactional_fixtures = true


# Whether or not to allow Rails to rescue errors and render them on an 
# error page. Default is false, which will cause an error to be raised.
#
# If you leave this to false, you can turn on Rails rescuing on a
# per-scenario basis, simply tagging it with @allow-rescue

ActionController::Base.allow_rescue = false


# If you want Selenium:
#
#   require 'selenium'


# If you want webrat, try these lines.
#
#   require 'webrat'
#   Webrat.configure do |config|
#     # Choose a config mode: :rails, :selenium, etc.
#     config.mode = :rails
#     # Do you want error messages to pop up in the browser?
#     config.open_error_files = false
#     # Selenium defaults to using the selenium environment,
#     # so you may need to explicitly set the env to :test
#     config.application_environment = :test
#   end
#   require 'webrat/core/matchers'


# If you want spec expections:
#
#   require 'spec/expectations'


# If you want database_cleaner:
# 
#   require 'database_cleaner'
#   require 'database_cleaner/cucumber'
#    DatabaseCleaner.strategy = :truncation
