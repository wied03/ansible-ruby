RSpec::Matchers.define :have_type_generic do |*expected|
  match do |actual|
    @types = actual.types
    generic = @types.find { |t| t.is_a? TypeGeneric }
    @matcher = be_nil
    if @matcher.matches?(generic)
      @no_generics = true
      next false
    end
    @matcher = eq(expected)
    @matcher.matches? generic.klasses
  end

  failure_message do |_|
    @no_generics ? "Could not find generic in types #{@types}" : @matcher.failure_message
  end
end
