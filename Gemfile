source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

gem 'mongoid', github: 'mongoid/mongoid'
gem 'bson_ext'
gem 'figaro'

# style and views
gem 'sass-rails'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'select2-rails'
gem 'haml', '~> 4.0.5'

#authentication
gem 'devise'

#authorization
gem "cancan"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

gem 'rails_admin'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem "email_spec"
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development, :test do
	gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'puma'
  gem 'wirble'
  gem 'hirb'
  gem 'awesome_print'
  gem "spring"
end