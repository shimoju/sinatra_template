ruby '2.2.3'
source 'https://rubygems.org'

gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-contrib', require: false
gem 'sinatra-activerecord'
gem 'sinatra-asset-pipeline', require: 'sinatra/asset_pipeline'
gem 'uglifier'
gem 'activesupport'

gem 'rake'
gem 'foreman', require: false
gem 'puma', require: false

gem 'slim'
gem 'sass'
gem 'compass'

gem 'bootstrap-sass'

source 'https://rails-assets.org' do
  gem 'rails-assets-jquery'
end

group :production do
  gem 'pg'
  # gem 'rack-ssl'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'rack-test'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec'
  gem 'dotenv'
end

group :development do
  gem 'rack-livereload'
  gem 'guard'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'guard-livereload', require: false
  gem 'guard-pow', require: false
  gem 'guard-rspec', require: false
end
