# frozen_string_literal: true

RSpec::Matchers.define :have_yaml do |*expected|
  match do |_|
    filename = expected[0]
    options = expected[1]
    unless filename
      @our_messages = "'Expected' should be 'something.yml'"
      next false
    end

    unless !options || (options.is_a?(Hash) && options.keys == [:that])
      @our_messages = "'Expected' should be 'something.yml, that: eq('foobar')'"
      next false
    end

    unless File.exist?(filename)
      @our_messages = "File #{filename} does not exist!"
      next false
    end

    next true unless options

    file_contents = File.read filename
    @matcher = options[:that]
    @matcher.matches? file_contents
  end

  match_when_negated do |_|
    actual = Dir.glob('**/*.yml')
    if expected.any?
      @matcher = include(*expected)
      @negate_message = true
      @matcher.does_not_match? actual
    else
      @matcher = be_empty
      @matcher.matches? actual
    end
  end

  failure_message do |_|
    @our_messages || @matcher.failure_message
  end

  failure_message_when_negated do |_|
    @negate_message ? @matcher.failure_message_when_negated : @matcher.failure_message
  end
end
