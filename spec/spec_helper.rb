require 'support/matchers/have_hash'
require 'support/matchers/have_errors'

RSpec.configure do |config|
  config.filter_run_including focus: true
  config.run_all_when_everything_filtered = true
end
