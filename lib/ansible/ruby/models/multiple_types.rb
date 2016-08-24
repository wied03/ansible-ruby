# See LICENSE.txt for license

class MultipleTypes
  def initialize(*klasses)
    @klasses = klasses
  end

  def valid?(value)
    @klasses.any? { |klass| value.is_a? klass }
  end

  def error(attribute, value)
    "Attribute #{attribute} expected to be one of #{@klasses} but was a #{value.class}"
  end
end
