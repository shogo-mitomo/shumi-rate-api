source 'https://rubygems.org'

ruby '2.3.3'

### Application ###
gem 'rails'                 # A full-stack web framework optimized for programmer happiness and sustainable productivity
gem 'pg'                    # The Ruby interface to the PostgreSQL RDBMS
gem 'unicorn'               # Rack HTTP server for fast clients and Unix
gem 'unicorn-worker-killer' # Automatically restart Unicorn workers

### API ###
gem 'active_model_serializers' # ActiveModel::Serializer implementation and Rails hooks
gem 'oj'                       # A fast JSON parser and Object marshaller as a Ruby gem
gem 'rack-json_schema'         # JSON Schema based Rack middlewares

### Setting ###
gem 'config' # Easiest way to add multi-environment yaml settings

### CLI ###
gem 'thor'       # A toolkit for building powerful command-line interfaces
gem 'formatador' # STDOUT text formatting
gem 'whenever'   # Provides a clear syntax for writing and deploying cron jobs
gem 'http'       # HTTP should be easy

### Monitoring ###
gem 'komachi_heartbeat'      # Rails Application Heartbeat Check Engine
gem 'newrelic_rpm'           # New Relic RPM Ruby Agent
gem 'chrono_logger'          # A lock-free logger with timebased file rotation
gem 'exception_notification' # Exception Notifier Plugin for Rails
gem 'slack-notifier'         # A simple wrapper for posting to slack channels

group :development, :test do
  ### Console ###
  gem 'pry-rails'     # An IRB alternative and runtime developer console
  gem 'pry-coolline'  # Live syntax-highlighting for the Pry REPL
  gem 'hirb'          # A mini view framework for console/irb
  gem 'hirb-unicode'  # Unicode support for hirb
  gem 'awesome_print' # Pretty print your Ruby objects with style
  gem 'pry-byebug'    # Pry navigation commands via byebug

  ### Command ###
  gem 'spring'                  # Rails application preloader
  gem 'spring-commands-rspec'   # Implements the rspec command for Spring
  gem 'spring-commands-rubocop' # Implements rubocop command for Spring
end

group :test do
  ### Testing ###
  gem 'rspec-rails'             # A testing framework for Rails 3.x and 4.x
  gem 'rspec-request_describer' # Force some rules to write self-documenting request spec
  gem 'factory_girl_rails'      # A fixtures replacement
  gem 'timecop'                 # Making it dead simple to test time-dependent code
  gem 'database_rewinder'       # Minimalist's tiny and ultra-fast database cleaner
  gem 'fuubar'                  # The instafailing RSpec progress bar formatter
  gem 'simplecov'               # A code coverage analysis tool for Ruby
end

group :development do
  ### Analysis ###
  gem 'brakeman'             # A static analysis security vulnerability scanner
  gem 'bullet'               # Help to kill N+1 queries and unused eager loading
  gem 'rubocop'              # A Ruby static code analyzer
  gem 'rails_best_practices' # A code metric tool for rails projects
  gem 'reek'                 # Code smell detector for Ruby
  gem 'flay'                 # Analyzes code for structural similarities
  gem 'fasterer'             # Make your Rubies go faster with this command line tool

  ### Utility ###
  gem 'annotate'           # Annotate Rails classes with schema and routes info
  gem 'rails-erd'          # Generate Entity-Relationship Diagrams for Rails applications
  gem 'prmd'               # JSON Schema tools and doc generation for HTTP APIs
  gem 'jdoc'               # Generate API documentation from JSON Schema
  gem 'terminal-notifier'  # Send User Notifications on Mac OS X 10.8 from the command-line
end
