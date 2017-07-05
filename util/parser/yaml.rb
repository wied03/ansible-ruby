# frozen_string_literal: true
# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Yaml
        class << self
          def parse(yaml_string, description, module_name = nil)
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
            yaml.gsub(/ \\\n/, '')
          end

          def with_yaml_lines(yaml)
            yaml.split("\n").map do |line|
              yield line
            end.join "\n"
          end

          # rubocop:disable Metrics/MethodLength
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
              '      clc_blueprint_package:' => '  clc_blueprint_package:',
              # ops template, indentation
              '    ops_template:' => '  ops_template:',
              # junos_template
              /- name: replace config hierarchy\n\s+src: config.j2/ => "-   name: replace config hierarchy\n    src: config.j2",
              /- name: overwrite the config\n\s+src: config.j2/ => "-   name: overwrite the config\n    src: config.j2",
              # cl_interface_policy - incorrect comment
              /^Example playbook entries using the cl_interface_policy module\.$/ => '# Example playbook entries using the cl_interface_policy module.',
              # synchronize - not commented
              /# Example .rsync-filter file in the source directory.*previously excluded/m => '# commented',
              # mysql_user - usage not commented properly
              'mydb.*:INSERT,UPDATE/anotherdb.*:SELECT/yetanotherdb.*:ALL' => '- mysql_user: priv=mydb.*:INSERT,UPDATE/anotherdb.*:SELECT/yetanotherdb.*:ALL',
              /\[client\].*password=.*y/m => '# Commented out config file',
              # Vsphere guest, complex, pick 1 example
              /(- vsphere_guest:.*?)^-.*/m => '\1',
              # os_server, complex, pick 1 example
              /(- os_server:.*?)^-.*/m => '\1',
              # ec2_asg - bad comments
              /^# Rolling ASG Updates.*?launch configuration\.$/m => '# comments',
              /^To only replace a couple of instances.*replace_instances":/m => '# comments',
              # rollbar_deployment - trailing commas
              'revision=4.2,' => 'revision=4.2',
              "rollbar_user='admin'," => "rollbar_user='admin'",
              # Synchronize - non parseable defaults
              'default: Value of ansible_ssh_port for this host, remote_port config setting, or 22 if none of those are set' => 'default: 22',
              # rds - non parseable defaults
              'default: 3306 for mysql, 1521 for Oracle, 1433 for SQL Server, 5432 for PostgreSQL.' => 'default: 5432',
              # datadog_monitor
              'default: 2x timeframe for metric, 2 minutes for service' => 'default: 2',
              # bad spacing
              '   docker_image:' => '  docker_image:',
              # bad spacing
              '     dellos10_command:' => '    dellos10_command:',
              # forgot : on key
              'provider "{{ cli }}"' => 'provider: "{{ cli }}"',
              # Forgot 'tasks' list
              /(?<=transport: cli).*?- name: run show version on remote devices.*?eos_command/m => "\ntasks:\n- name: run show version on remote devices\n  eos_command",
              # Spacing problem
              '   eos_command:' => '  eos_command:',
              '    sros_config:' => '  sros_config:',
              '     sros_command:' => '    sros_command:',
              # Vars/hash
              /vars:.*?- eos_config:/m => '- eos_config:',
              /vars:.*?- eos_facts:/m => '- eos_facts:',
              /vars:.*?- ios_facts:/m => '- ios_facts:',
              /vars:.*?- asa_config:/m => '- asa_config:',
              /vars:.*?- asa_command:/m => '- asa_command:',
              /vars:.*?- vyos_command:/m => '- vyos_command:',
              /vars:.*?- ops_command:/m => '- ops_command:',
              /vars:.*?- ops_facts:/m => '- ops_facts:',
              /vars:.*?- nxos_facts:/m => '- nxos_facts:',
              /vars:.*?- asa_acl:/m => '- asa_acl:',
              /vars:.*?  eos_eapi:/m => "- name: foo\n  eos_eapi:",
              /vars:.*?  ios_config:/m => "- name: foo\n  ios_config:",
              '     ios_command:' => '    ios_command:',
              '     iosxr_command:' => '    iosxr_command:',
              /vars:.*?  iosxr_config:/m => "- name: foo\n  iosxr_config:",
              /vars:.*?  junos_command:/m => "- name: foo\n  junos_command:",
              /vars:.*?  junos_config:/m => "- name: foo\n  junos_config:",
              /vars:.*?  junos_netconf:/m => "- name: foo\n  junos_netconf:",
              'configure RR client' => '# configure RR client',
              /vars:.*?  nxos_command:/m => "- name: foo\n  nxos_command:",
              '   nxos_command:' => '  nxos_command:',
              /vars:.*?  nxos_config:/m => "- name: foo\n  nxos_config:",
              /vars:.*?  vyos_facts:/m => "- name: foo\n  vyos_facts:",
              /vars:.*?  vyos_config:/m => "- name: foo\n  vyos_config:",
              /vars:.*?  sros_rollback:/m => "- name: foo\n  sros_rollback:",
              /vars:.*?  sros_config:/m => "- name: foo\n  sros_config:",
              /vars:.*?  ops_config:/m => "- name: foo\n  ops_config:",
              /vars:.*?  nxos_nxapi:/m => "- name: foo\n  nxos_nxapi:",
              # quotes not closed
              'src: "C:\\\\DirectoryOne' => 'src: "C:/DirectoryOne"',
              # Not labeled correctly and not formatted right
              /# Create a DNS record on a UCS.*- udm_dns_zone:.*/m => "- udm_dns_record:\n   name: www\n   zone: example.com\n   type: host_record\n   data: ['a': '192.0.2.1']",
              'api_url: "{{ netapp_api_url }}"/' => 'api_url: "{{ netapp_api_url }}"',
              # unquoted comment
              'send a message to chat in playbook' => '# send a message to chat in playbook',
              # Incorrect YAML escaping in F5 example, this will result in strings anyways
              'host: "{{ ansible_default_ipv4["address"] }}"' => 'host: a string',
              '     context: customer_a' => '    context: customer_a',
              'automation to stop the maintenance.' => '# automation to stop the maintenance.',
              # Lack of closing quotes
              '- "server1.example.com' => '- "server1.example.com"',
              # markdown in the middle of the YAML example
              /^```/ => '',
              # this doesn't help much with how we're using this
              '    ---' => '',
              # hard to fix this
              /datadog_event:.*/m => '',
              # unescaped colon
              'Obtain SSO token with using username/password credentials:' => 'Obtain SSO token with using username/password credentials',
              # tasks/block interference
              /tasks:.*- block:/m => '',
              # Quotes left open
              /cluster: "centos$/ => 'cluster: "centos"',
              # Invalig YAML
              /# Create a Redshift.*/m => '',
              # Example turns into JSON for some reason in cloudformation_facts
              /"stack_outputs": {.*/m => '',
              # unescaped command
              /ansible winhost.*/ => '# ansible winhost...',
              # unmatched quotes
              /'{{roleinput\d}}"/ => '"{{roleinput2222}}"',
              # not quoted properly
              '- include: {{hostvar}}.yml' => '- include: "{{hostvar}}.yml"',
              'src: {{ inventory_hostname }}.cfg' => 'src: "{{ inventory_hostname }}.cfg"',
              # = should be colon in nxos_interface_ospf
              '    cost=default' => '    cost: default',
              # block
              /- block:.*name: Install OS/m => "tasks:\n    - name: Install OS",
              /transport: nxapi.*rescue.*/m => 'transport: nxapi',
              # win_acl spacing
              '-   name: Remove FullControl AccessRule for IIS_IUSRS' => '- name: Remove FullControl AccessRule for IIS_IUSRS',
              '-   name: Deny Deny' => '- name: Deny Deny',
              "msg: '{{ inventory_hostname }} has exploded in flames, It is now time to panic\" app_token=wxfdksl user_key=baa5fe97f2c5ab3ca8f0bb59" =>
                "msg: '{{ inventory_hostname }} has exploded in flames, It is now time to panic'\n    app_token: wxfdksl\n    user_key: baa5fe97f2c5ab3ca8f0bb59",
              # avi/avi_sslkeyandcertificate.py
              /key: \|.*--END PRIVATE KEY-----/m => 'key: foo',
              /certificate: \|.*--END CERTIFICATE-----/m => 'certificate: foo',
              # pagerduty
              '                      name=companyabc' => '    name: companyabc'
            }
            dirty_patterns.inject(yaml) do |fixed_yaml, find_replace|
              fixed_yaml.gsub find_replace[0], find_replace[1]
            end
          end

          # rubocop:enable Metrics/MethodLength

          def fix_missing_hash_entry(yaml, module_name)
            # fix - svc : issues
            correct_usage = "- #{module_name}:"
            yaml = yaml.gsub "- #{module_name} :", correct_usage
            # missing colon entirely
            yaml.gsub(/- #{module_name}(?!\:)/, correct_usage)
          end
        end
      end
    end
  end
end
