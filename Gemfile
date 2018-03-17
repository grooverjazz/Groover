source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use mysql as the database for Active Record database implementation
gem 'mysql2'
# User rails12 factor for heroku's native ruby support tweaks
gem 'rails_12factor'
# Use wdm for Windows poll changes
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap 3 for themeing and templating
gem 'bootstrap-sass'
# Use bootstrapformfor to allow forms to be auto-formatted as per bootstrap standards
gem 'bootstrap_form'
# Use JQuery code optimized for Bootstrap usage
gem 'jquery-rails'
# Use Dragonfly for image upload and handling
gem 'dragonfly', '~> 1.1.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease
gem 'jbuilder', '~> 2.5'
# Use Devise for account management and authorization
gem 'devise'
# Use Cancancan for permissions enforcement
gem 'cancancan'
# Use rolify for role assignment to user accounts
gem 'rolify'
# Windows does not include zoneinfo files so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.11'

gem 'coffee-script-source', '=1.8.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
