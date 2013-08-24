require 'rake/testtask'

Rake::TestTask.new :spec do |t|
  t.pattern = "spec/**/*_spec.rb"
end

Rake::TestTask.new :acceptance do |t|
  t.pattern = "spec/**/*_acceptance.rb"
end

namespace :assets do
  desc "Precompile assets"
  task :precompile do
    require 'sprockets'

    environment = Sprockets::Environment.new.tap do |env|
      Dir["assets/*"].each{|path| env.append_path path }
    end
    manifest = Sprockets::Manifest.new(environment.index, 'public/assets')

    manifest.compile %w(application.js application.css *.png *.jpg *.svg *.eot *.ttf *.woff)
  end
end

task default: [:spec, :acceptance]
