# frozen_string_literal: true
if ENV['TRAVIS']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

spec_dir = Pathname.new('spec')
Dir['spec/support/**/*.rb'].each do |file|
  require Pathname.new(file).relative_path_from(spec_dir)
end

RSpec.configure do |config|
  config.filter_run_including focus: true
  config.run_all_when_everything_filtered = true
end
