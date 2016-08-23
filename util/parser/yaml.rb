# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description, module_name=nil)
            yaml_string = remove_middle_comments yaml_string
            yaml_string = fix_missing_hash_entry(yaml_string, module_name) if module_name
            File.write "debug_#{description}.yml", yaml_string
            YAML.load yaml_string
          rescue StandardError
            puts "Problem parsing #{description}!"
            raise
          end

          private

          def fix_missing_hash_entry(yaml, module_name)
            yaml.gsub "- #{module_name}", "- #{module_name}:"
          end

          def remove_middle_comments(yaml)
            is_array = false
            index = 0
            yaml.split("\n").map do |line|
              # Exclude lines that aren't white space or indentations for arrays
              next nil if is_array && ![' ', '-'].include?(line[0])
              is_array = true if line.start_with?('-') && !line.start_with?('---')
              index += 1
              line
            end.join "\n"
          end
        end
      end
    end
  end
end
