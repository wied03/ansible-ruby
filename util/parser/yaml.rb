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
            yaml.gsub /^(#.*?)^-/m, '-'
          end
        end
      end
    end
  end
end
