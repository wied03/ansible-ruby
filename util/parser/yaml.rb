# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description, module_name=nil)
            yaml_string = remove_middle_comments yaml_string
            yaml_string = fix_missing_hash_entry(yaml_string, module_name) if module_name
            yaml_string = fix_indents yaml_string
            File.write "debug_#{description}.yml", yaml_string
            YAML.load yaml_string
          rescue StandardError
            puts "Problem parsing #{description}!"
            raise
          end

          private

          def with_yaml_lines(yaml)
            yaml.split("\n").map do |line|
              yield line
            end.join "\n"
          end

          def fix_indents(yaml)
            sub = {
              '        azure_rm_networkinterface:' => '      azure_rm_networkinterface:',
              '     - name: Create a network interface with private IP address only (no Public IP)' => '    - name: Create a network interface with private IP address only (no Public IP)',
              "- gc_storage:: bucket=mybucket object=key.txt src=/usr/local/myfile.txt headers='{\"Content-Encoding\": \"gzip\"}'" => "- gc_storage:: 'bucket=mybucket object=key.txt src=/usr/local/myfile.txt headers=''{\"Content-Encoding\": \"gzip\"}'''"
            }
            with_yaml_lines yaml do |line|
              replacement = sub.find {|old_val, _| line.include? old_val}
              if replacement
                line.sub replacement[0], replacement[1]
              else
                line
              end
            end
          end

          def fix_missing_hash_entry(yaml, module_name)
            yaml.gsub "- #{module_name}", "- #{module_name}:"
          end

          def remove_middle_comments(yaml)
            is_array = false
            index = 0
            with_yaml_lines yaml do |line|
              # Exclude lines that aren't white space or indentations for arrays
              next nil if is_array && ![' ', '-'].include?(line[0])
              is_array = true if line.start_with?('-') && !line.start_with?('---')
              index += 1
              line
            end
          end
        end
      end
    end
  end
end
