RSpec::Matchers.define :generate_yaml do |*expected|
  match do |_|
    length_ok = expected.length == 2
    filename = length_ok && expected[0]
    options = length_ok && expected[1]
    unless options.is_a?(Hash) && options.keys == [:that]
      @our_messages = "'Expected' should be 'something.yml, that: eq('foobar')'"
      next false
    end

    unless File.exists?(filename)
      @our_messages = "File #{filename} does not exist!"
      next false
    end

    file_contents = File.read filename
    @matcher = options[:that]
    @matcher.matches? file_contents
  end

  failure_message do |_|
    @our_messages || @matcher.failure_message
  end
end
