source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby ENV['CUSTOM_RUBY_VERSION'] || '2.5.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'mini_racer', platforms: :ruby
gem 'rails', '~> 6.0.1'
gem 'bootsnap'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use neo4j as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SLIM as template language
gem 'slim-rails'
# Use webpacker instead of sprockets
gem 'webpacker', '~> 4.x'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Enable image resizing
gem 'image_processing', '~> 1.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# Use mail_form as contact form and sendgrid as mail sending service
gem 'mail_form'
gem 'sendgrid-ruby'
# Use trestle as admin panel
gem "trestle", ">=0.9.3"
gem 'trestle-auth'
gem 'trestle-active_storage'
gem 'trestle-tinymce'
# Use Cloudinary as media cloud storage
gem "cloudinary"
# Add GitHub REST API as projects source
gem "octokit", "~> 4.0"
# Add Vimeo REST API as projects source 
gem 'vimeo_api_client', git: 'https://github.com/agilie/vimeo-api-gem'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Prevent security vulnerabilities
gem "rack", ">= 2.0.6"
gem "loofah", ">= 2.2.3"
gem "actionview", ">= 5.1.6.2"
gem "kaminari", ">=1.2.1"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'master'
  gem 'factory_bot_rails'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
