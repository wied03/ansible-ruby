# See LICENSE.txt for license

class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # Don't worry about this case, different validator
    return if value.is_a? NilClass
    expected_type = options[:type] || options[:with]
    error_message = case expected_type
                    when TypeGeneric, MultipleTypes
                      unless expected_type.valid? value
                        expected_type.error(attribute, value)
                      end
                    else
                      unless value.is_a?(expected_type)
                        "Attribute #{attribute} expected to be a #{expected_type} but was a #{value.class}"
                      end
                    end
    return unless error_message
    error_message = custom_error(value) if options[:message]
    record.errors[attribute] << error_message
  end

  def custom_error(value)
    options[:message].gsub('%{value}', value.to_s)
      .gsub('%{type}', value.class.name)
  end
end
