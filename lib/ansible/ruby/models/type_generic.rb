# frozen_string_literal: true

# See LICENSE.txt for license
class TypeGeneric
  attr_reader :klasses

  def initialize(*klasses)
    @klasses = klasses
  end

  def valid?(value)
    validation_object = validation_object(value)
    # Don't worry about nil
    return true unless validation_object

    @klasses.any? { |klass| validation_object.is_a? klass }
  end

  def error(attribute, value)
    object = validation_object(value)
    "Attribute #{attribute} expected to be a #{@klasses} but was a #{object.class}"
  end

  def eql?(other)
    other.is_a?(TypeGeneric) && other.klasses == @klasses
  end

  def hash
    @klasses.inject(0) do |hash, klass|
      hash ^ klass.hash
    end
  end

  private

  def validation_object(value)
    value.is_a?(Array) ? value[0] : value
  end
end
