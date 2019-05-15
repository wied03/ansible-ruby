# frozen_string_literal: true

# See LICENSE.txt for license

class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # Don't worry about this case, different validator
    return if value.is_a? NilClass

    failed = perform_validation(attribute, value)
    return unless failed

    failed = custom_error(value) if options[:message]
    record.errors[attribute] << failed
  end

  private

  def expected_type
    options[:type] || options[:with]
  end

  def perform_validation(attribute, value)
    case expected_type
    when TypeGeneric, MultipleTypes
      expected_type.error(attribute, value) unless expected_type.valid? value
    else
      "Attribute #{attribute} expected to be a #{expected_type} but was a #{value.class}" unless value.is_a?(expected_type)
    end
  end

  def custom_error(value)
    options[:message].gsub('%{value}', value.to_s)
                     .gsub('%{type}', value.class.name)
  end
end
