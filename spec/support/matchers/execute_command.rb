RSpec::Matchers.define :execute_command do |expected|
  def commands(actual)
    actual[:commands]
  end

  match do |actual|
    @matcher = eq([*expected])
    @matcher.matches? commands(actual)
  end

  match_when_negated do |actual|
    expect(expected).to be_nil
    @matcher = be_empty
    @matcher.matches? commands(actual)
  end

  failure_message do |_|
    @matcher.failure_message
  end
end

RSpec::Matchers.alias_matcher :execute_commands, :execute_command
