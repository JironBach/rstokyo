source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.0'
gem 'rake'#, '~> 10.1.0'

group :development do
  # Use sqlite3 as the database for Active Record
  #gem 'sqlite3', '~> 1.3.12'
  gem 'sqlite3', '~> 1.3.13'
end

#gem 'mysql2'#, '0.3.12'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

#gem 'heroku-rack-ssl-enforcer-rails'
gem 'rails_12factor', group: :production

group :production do
  gem 'pg', '~> 0.20'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  #gem 'visual_migrate', :git => 'git://github.com/JironBach/visual_migrate.git'
  gem "ruby_parser"
  gem "file-tail"
  gem "sourcify"
  gem "ruby2ruby"
  gem 'jquery-ui-rails'
  gem 'systemu'
end
group :development, :test do
  gem 'rack-env'
  gem 'rspec'
  gem 'rspec_junit_formatter'
end

gem 'paperclip'
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'
gem 'active_attr'

