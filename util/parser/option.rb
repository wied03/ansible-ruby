# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details)
            # for some reason, description is an array
            flat_desc = details[:description].join ','
            symbol = ":#{name}"
            lines = [
              "# @return [String] #{flat_desc}",
              "attribute #{symbol}"
            ]
            lines << parse_validations(symbol, details)
            lines.compact.join "\n"
          end

          private

          def parse_validations(symbol, details)
            validations = {}
            validations[:presence] = true if details[:required]
            if (default = details[:default])
              validations[:type] = default.class.name
            end

            return nil unless validations.any?
            "validates #{symbol}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
          end
        end
      end
    end
  end
end
