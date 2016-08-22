# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details, example)
            # for some reason, description is an array
            flat_desc = details[:description].join ','
            lines = [
              "# @return [String] #{flat_desc}",
              "attribute :#{name}"
            ]
            lines << parse_validations(name, details, example)
            lines.compact.join "\n"
          end

          private

          def parse_validations(attribute, details, example)
            validations = {}
            validations[:presence] = true if details[:required]
            type = derive_type(attribute, details, example)
            validations[:type] = type if type

            return nil unless validations.any?
            "validates :#{attribute}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
          end

          def derive_type(attribute, details, example)
            if (default = details[:default])
              default.class.name
            else
              value_array = example.map { |ex| ex.values }.flatten
              key_value_str = value_array.map do |value|
                value.split ' '
              end.flatten
              value_hash = Hash[key_value_str.map do |pair|
                equals = pair.split '='
                # some attributes have data like attr=value=value2, only want attr=value
                equals[0..1]
              end]
              sample_value = value_hash[attribute]
              sample_value && sample_value.class.name
            end
          end
        end
      end
    end
  end
end