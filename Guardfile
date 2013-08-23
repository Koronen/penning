guard 'bundler' do
  watch('Gemfile')
end

guard 'minitest' do
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/unit_helper\.rb|)    { "spec" }

  watch(%r|^models/(.*)\.rb|)         { |m| "spec/models/#{m[1]}_spec.rb" }
  watch(%r|^repositories/(.*)\.rb|)   { |m| "spec/repositories/#{m[1]}_spec.rb" }
end
