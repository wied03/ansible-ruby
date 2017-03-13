# frozen_string_literal: true
RSpec::Matchers.define :have_hash do |expected|
  match do |actual|
    @matcher = eq(expected)
    @matcher.matches? actual.to_h
  end

  failure_message do |_|
    @matcher.failure_message
  end
end
