# frozen_string_literal: true

RSpec::Matchers.define :have_errors do |expected|
  match do |actual|
    actual.valid? # trigger validation
    errors = actual.errors.to_h
    @matcher = eq(expected)
    @matcher.matches? errors
  end

  failure_message do |_|
    @matcher.failure_message
  end
end
