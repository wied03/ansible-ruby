class TypeGeneric
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

  private

  def validation_object(value)
    value.is_a?(Array) ? value[0] : value
  end
end

class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # Don't worry about this case, different validator
    return if value.nil?
    expected_type = options[:with]
    record_errors = record.errors[attribute]
    if expected_type.is_a? TypeGeneric
      unless expected_type.valid? value
        record_errors << expected_type.error(attribute, value)
      end
    else
      unless value.is_a?(expected_type)
        record_errors << "Attribute #{attribute} expected to be a #{expected_type} but was a #{value.class}"
      end
    end
  end
end
