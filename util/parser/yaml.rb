# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description, module_name=nil)
            yaml_string = remove_middle_comments yaml_string
            yaml_string = fix_missing_hash_entry(yaml_string, module_name) if module_name
            yaml_string = remove_difficult_strings yaml_string
            File.write "debug_#{description}.yml", yaml_string if ENV['DEBUG']
            YAML.load yaml_string
          rescue StandardError
            $stderr << "Problem parsing #{description}!"
            raise
          end

          private

          def with_yaml_lines(yaml)
            yaml.split("\n").map do |line|
              yield line
            end.join "\n"
          end

          def remove_difficult_strings(yaml)
            dirty_patterns = {
              '        azure_rm_networkinterface:' => '      azure_rm_networkinterface:',
              '     - name: Create a network interface with private IP address only (no Public IP)' => '    - name: Create a network interface with private IP address only (no Public IP)',
              "- gc_storage: bucket=mybucket object=key.txt src=/usr/local/myfile.txt headers='{\"Content-Encoding\": \"gzip\"}'" => "- gc_storage: 'bucket=mybucket object=key.txt src=/usr/local/myfile.txt headers=''{\"Content-Encoding\": \"gzip\"}'''",
              '  filters parameters are Not mutually exclusive)' => '#  filters parameters are Not mutually exclusive)',
              /^\$\s*ansible -i.*/ => '# non commented $ansible command removed', # often before --- in YAML files but not commented out, throws off parser
              'C:\\Users\\Phil\\' => 'C:\\\\\Users\\\\\Phil\\\\\\', # win_unzip
              /host.*^\}/m => '# Removed invalid YAML', # win_iis_website
              '- name: Remove FullControl AccessRule for IIS_IUSRS' => '-   name: Remove FullControl AccessRule for IIS_IUSRS', # win_acl indentation
              '- name: Deny Deny' => '-   name: Deny Deny', # more win_acl
              # ejabberd_user
              'Example playbook entries using the ejabberd_user module to manage users state.' => '# Example playbook entries using the ejabberd_user module to manage users state.',
              /General explanation, starting with an example folder structure.*The 'releases' folder.*during cleanup./m => '# text was not commented out' # deploy_helper
            }
            dirty_patterns.inject(yaml) do |fixed_yaml, find_replace|
              fixed_yaml.gsub find_replace[0], find_replace[1]
            end
          end

          def fix_missing_hash_entry(yaml, module_name)
            # fix - svc : issues
            correct_usage = "- #{module_name}:"
            yaml = yaml.gsub "- #{module_name} :", correct_usage
            # missing colon entirely
            yaml.gsub /- #{module_name}(?!\:)/, correct_usage
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
