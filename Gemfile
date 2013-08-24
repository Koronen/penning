source 'https://rubygems.org'

gem 'rake', '~> 10.1.0'
gem 'sinatra', '~> 1.4.3'
gem 'haml', '~> 4.0.1'
gem 'i18n', '~> 0.6.4'
gem 'dotenv', '~> 0.7.0'
gem 'data_mapper', '~> 1.2.0'

group :assets do
  gem 'sprockets', '~> 2.10.0'
  gem 'sprockets-sass', '~> 1.0.1'
  gem 'sprockets-helpers', '~> 1.0.1'

  gem 'sass', '~> 3.2.10'
  gem 'coffee-script', '~> 2.2.0'
end

group :development, :test do
  gem 'pry', '~> 0.9.12.2'
end

group :test do
  gem 'minitest', '~> 5.0.6'
  gem 'rack-test', '~> 0.6.2'

  gem 'dm-sqlite-adapter', '~> 1.2.0'

  gem 'guard', '~> 1.8.2'
  gem 'guard-bundler', '~> 1.0.0'
  gem 'guard-minitest', '~> 1.0.0'
end

group :production do
  gem 'dm-postgres-adapter', '~> 1.2.0'
end
