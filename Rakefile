require 'rake/testtask'

Rake::TestTask.new :spec do |t|
  t.pattern = "spec/**/*_spec.rb"
end

Rake::TestTask.new :acceptance do |t|
  t.pattern = "spec/**/*_acceptance.rb"
end

task default: [:spec, :acceptance]
