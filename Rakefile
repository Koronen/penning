require 'rake/testtask'

Rake::TestTask.new :spec do |t|
  t.pattern = "spec/**/*_spec.rb"
end

Rake::TestTask.new :acceptance do |t|
  t.pattern = "spec/**/*_acceptance.rb"
end

if ENV['RACK_ENV'] == 'production'
  require 'sinatra/asset_pipeline/task.rb'
  require './penning'
  Sinatra::AssetPipeline::Task.define! Penning
end

task default: [:spec, :acceptance]
