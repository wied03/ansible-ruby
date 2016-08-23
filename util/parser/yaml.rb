# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description, module_name=nil)
            File.write "debug_#{description}_before.yml", yaml_string if ENV['DEBUG']
            yaml_string = remove_line_continuation yaml_string
            yaml_string = fix_missing_hash_entry(yaml_string, module_name) if module_name
            yaml_string = remove_difficult_strings yaml_string
            File.write "debug_#{description}_after.yml", yaml_string if ENV['DEBUG']
            YAML.load yaml_string
          rescue StandardError
            $stderr << "Problem parsing #{description}!"
            raise
          end

          private

          def remove_line_continuation(yaml)
            # code doesn't always indent these right
            yaml.gsub /\\\n/, ''
          end

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
              # often before --- in YAML files but not commented out, throws off parser
              /^\$\s*ansible -i.*/ => '# non commented $ansible command removed',
              # often before --- in YAML files but not commented out, throws off parser
              /^\s*ansible host.*/ => '# non commented $ansible command removed',
              # win_unzip
              'C:\\Users\\Phil\\' => 'C:\\\\\Users\\\\\Phil\\\\\\',
              # win_iis_website
              /host.*^\}/m => '# Removed invalid YAML',
              # win_acl indentation
              '- name: Remove FullControl AccessRule for IIS_IUSRS' => '-   name: Remove FullControl AccessRule for IIS_IUSRS',
              # more win_acl
              '- name: Deny Deny' => '-   name: Deny Deny',
              # ejabberd_user
              'Example playbook entries using the ejabberd_user module to manage users state.' => '# Example playbook entries using the ejabberd_user module to manage users state.',
              # deploy_helper
              /General explanation, starting with an example folder structure.*The 'releases' folder.*during cleanup./m => '# text was not commented out',
              "gluster_volume: state=present name=test1 options='{performance.cache-size: 256MB}'" => "gluster_volume: 'state=present name=test1 options=''{performance.cache-size: 256MB}'''",
              # postgresql_user
              /"When passing an encrypted password.*/ => 'When passing an encrypted password, the encrypted parameter must also be true, and it must be generated with the format in the Ansible docs',
              'INSERT,UPDATE/table:SELECT/anothertable:ALL' => '- postgresql_user: priv=INSERT,UPDATE/table:SELECT/anothertable:ALL',
              # get_ent
              '- getent: database=shadow key=www-data split=:' => "- getent: 'database=shadow key=www-data split=:'",
              # crypttab
              "when: '/dev/mapper/luks-' in {{ item.device }}" => "when: \"'/dev/mapper/luks-' in {{ item.device }}\"",
              # npm
              /^description: .*package.*/ => '# npm description removed',
              # bower
              'description: install bower locally and run from there' => '',
              # pushover
              /has exploded in flames,.*baa5fe97f2c5ab3ca8f0bb59/m => 'has exploded in flames, It is now time to panic" app_token=wxfdksl user_key=baa5fe97f2c5ab3ca8f0bb59',
              # ha_proxy, invalid YAML hash with array
              'author: "Ravi Bhure (@ravibhure)"' => '# author: "Ravi Bhure (@ravibhure)"',
              # dnsimple, missing colon
              '- local_action dnsimple' => '- local_action: dnsimple',
              # zabbix_hostmacro
              'macro_name:Example macro' => 'macro_name: Example macro',
              'macro_value:Example value' => 'macro_value: Example value',
              # pagerduty
              /- pagerduty_alert:\n\s+name: companyabc/ => "- pagerduty_alert:\n                      name=companyabc",
              # datalog - not escaped properly
              'query: "datadog.agent.up".over("host:host1").last(2).count_by_status()"' => 'query: "datadog.agent.up"',
              # influxdb_retention_policy - indentation
              '    influxdb_retention_policy:' => '  influxdb_retention_policy:',
              # influxdb_database - more indentation
              '    influxdb_database:' => '  influxdb_database:',
              # xenserver_facts - indentation, bad commenting
              '   xenserver:' => '  xenserver:',
              /TASK: \[Print.*/m => '# commented out',
              # vmware_vswitch
              /^Example from Ansible playbook$/ => '# Example from Ansible playbook',
              # vmware_target_canonical_facts - indentation
              /- name: Get Canonical name.*local_action: \>/m => "- name: Get Canonical name\n  local_action: >",
              # vmware_dvs_portgroup
              /name: Create Management portgroup.*local_action:/m => "name: Create Management portgroup\n     local_action:",
              # vmware_datacenter - indentation
              /- name: Create Datacenter.*local_action: \>/m => "- name: Create Datacenter\n  local_action: >",
              # vmware_cluster - indentation
              /- name: Create Cluster.*local_action: \>/m => "- name: Create Cluster\n  local_action: >",
              # vca_vapp
              'vapp_name: tower' => 'vapp_name=tower',
              # os_user_facts and os_project_facts - dangling comment
              /# Gather facts about a previously created (user|project).*with filter/m => '# Gather facts about a previously created \1 in a specific domain with filter',
              # virt - mixing hash and array
              '- virt: name=alpha state=running' => '',
              # cs_configuration, extra colon
              '    module: cs_configuration:' => '    module: cs_configuration',
              # clc_blueprint_package, indentation
              '      clc_blueprint_package:' => '  clc_blueprint_package:'
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
        end
      end
    end
  end
end
