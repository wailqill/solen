source 'http://rubygems.org'

gem 'rails', '3.0.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

gem 'haml-rails', "0.3.4"

# Console display helpers
gem 'awesome_print'
gem 'looksee'
gem 'wirble'

group :test, :cucumber do
  gem 'cucumber-rails', '0.3.2'
  gem 'database_cleaner', '0.6.6'
  gem 'factory_girl_rails', '1.0.1'
  gem 'spork', '0.8.4'
  gem 'capybara', '0.4.1.2'
  gem 'launchy', '0.4.0'
end

group :test, :cucumber, :development do
  gem 'autotest'
  gem 'rspec-rails', '2.5.0'
  gem 'factory_girl_generator', '>= 0.0.1'
end

group :test, :cucumber, :development, :staging do
  # For debugging, use one of the following
  # gem 'ruby-debug'   # For Ruby 1.8
  # gem 'ruby-debug19' # For Ruby 1.9
end
