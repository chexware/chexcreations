source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby ENV['CUSTOM_RUBY_VERSION'] || '2.3.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'mini_racer', platforms: :ruby
gem 'rails', '~> 5.1.7'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SLIM as template language
gem 'slim-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap
gem "bootstrap", ">= 4.3.1"
# Use Font Awesome
gem 'font-awesome-rails'
# Use jQuery
gem 'jquery-rails'
# Use React.js 
gem 'webpacker'
gem 'react-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# Use Vimeo API
gem 'vimeo'
# Use mail_form as contact form
gem 'mail_form'
gem 'sendgrid-ruby'
# Use trestle as admin panel
gem "trestle"
gem 'trestle-auth'
# gem 'therubyracer', platforms: :ruby
# Use octokit as GitHub API
gem "octokit", "~> 4.0"
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
 gem 'coffee-script-source', '1.8.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Image uploading gem(s)
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'

# Prevent security vulnerabilities
gem "rack", ">= 2.0.6"
gem "loofah", ">= 2.2.3"
gem "actionview", ">= 5.1.6.2"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
