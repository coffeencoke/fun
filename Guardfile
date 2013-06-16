guard 'rspec', :version => 2, spec_paths: ["spec/lib"] do
  watch(%r{^spec/lib/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^lib/common/(.+)\_sort.rb}) { |m| "spec/lib/common/sorting_spec.rb" }
end
