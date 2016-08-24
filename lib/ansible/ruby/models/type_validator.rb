# See LICENSE.txt for license

class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # Don't worry about this case, different validator
    return if value.is_a? NilClass
    expected_type = options[:with]
    record_errors = record.errors[attribute]
    case expected_type
    when TypeGeneric, MultipleTypes
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
