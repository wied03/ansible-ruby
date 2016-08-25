RSpec::Matchers.define :execute_command do |expected|
  match do |actual|
    actual_commands = actual[:commands]
    @matcher = eq([*expected])
    @matcher.matches? actual_commands
  end

  failure_message do |_|
    @matcher.failure_message
  end
end
