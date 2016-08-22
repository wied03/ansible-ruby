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
            lines << "validates #{symbol}, presence: true" if details[:required]
            lines.join "\n"
          end
        end
      end
    end
  end
end
