require 'rake/testtask'

require 'sinatra/asset_pipeline/task.rb'
require './penning'

Rake::TestTask.new :spec do |t|
  t.pattern = "spec/**/*_spec.rb"
end

Rake::TestTask.new :acceptance do |t|
  t.pattern = "spec/**/*_acceptance.rb"
end

Sinatra::AssetPipeline::Task.define! Penning

task default: [:spec, :acceptance]
