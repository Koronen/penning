source 'https://rubygems.org'

gem 'rake', '~> 10.1.0'
gem 'sinatra', '~> 1.4.3'
gem 'haml', '~> 4.0.1'
gem 'i18n', '~> 0.6.4'
gem 'dotenv', '~> 0.7.0'
gem 'data_mapper', '~> 1.2.0'

group :assets do
  gem 'sinatra-asset-pipeline', '~> 0.2.0'
end

group :development, :test do
  gem 'pry', '~> 0.9.12.2'
end

group :test do
  gem 'minitest', '~> 5.0.6'
  gem 'rack-test', '~> 0.6.2'
  gem 'dm-sqlite-adapter', '~> 1.2.0'
end

group :production do
  gem 'dm-postgres-adapter', '~> 1.2.0'
end
