# See LICENSE.txt for license
class TypeGeneric
  attr_reader :klass

  def initialize(klass)
    @klass = klass
  end

  def valid?(value)
    validation_object = validation_object(value)
    # Don't worry about nil
    return true unless validation_object
    validation_object.is_a? @klass
  end

  def error(attribute, value)
    object = validation_object(value)
    "Attribute #{attribute} expected to be a #{@klass} but was a #{object.class}"
  end

  def eql?(other)
    other.is_a?(TypeGeneric) && other.klass == @klass
  end

  def hash
    @klass.hash
  end

  private

  def validation_object(value)
    value.is_a?(Array) ? value[0] : value
  end
end
