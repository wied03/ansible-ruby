# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description)
            yaml_string = fix_missing_hash_entry yaml_string
            yaml_string = remove_middle_comments yaml_string
            File.write "debug_#{description}.yml", yaml_string
            YAML.load yaml_string
          rescue StandardError
            puts "Problem parsing #{description}!"
            raise
          end

          private

          def fix_missing_hash_entry(yaml)
            # some examples are missing the trailing :
            yaml.gsub /^- (.*?)(?<!:)$/, "- \\1:"
          end

          def remove_middle_comments(yaml)
            middle_comments = /^(#.*)\n-/m.match(yaml)
            (middle_comments && yaml.sub(middle_comments[1], '')) || yaml
          end
        end
      end
    end
  end
end
