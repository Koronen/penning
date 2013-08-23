ENV['RACK_ENV'] = 'test'
ENV['DATABASE_URL'] = 'sqlite::memory:'

require 'minitest/autorun'
