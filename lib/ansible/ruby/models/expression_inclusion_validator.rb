# frozen_string_literal: true

# See LICENSE.txt for license

class ExpressionInclusionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.is_a? NilClass

    # We won't know until runtime what the type is
    return if value.is_a? Ansible::Ruby::Models::JinjaExpression

    valid_values = options[:in]
    return if valid_values.include? value

    failed = "#{value} needs to be #{valid_values}"
    failed = custom_error(value) if options[:message]
    record.errors[attribute] << failed
  end

  private

  def custom_error(value)
    options[:message].gsub('%{value}', value.to_s)
                     .gsub('%{type}', value.class.name)
  end
end
