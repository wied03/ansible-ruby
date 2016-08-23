# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './yaml'

describe Ansible::Ruby::Parser::Yaml do
  describe '::parse' do
    let(:description) { 'unit_test' }
    let(:module_name) { nil }

    subject { Ansible::Ruby::Parser::Yaml.parse input_yaml, description, module_name }

    context 'standard' do
      let(:input_yaml) do
        <<YAML
---
  # Create a new database with name "acme"
  - postgresql_db: name=acme
  # Create a new database with name "acme" and specific encoding and locale
  # settings. If a template different from "template0" is specified, encoding
  # and locale settings must match those of the template.
  - postgresql_db: name=acme
                   encoding='UTF-8'
                   lc_collate='de_DE.UTF-8'
                   lc_ctype='de_DE.UTF-8'
                   template='template0'
YAML
      end

      it do
        is_expected.to eq [
                            { 'postgresql_db' => 'name=acme' },
                            { 'postgresql_db' => "name=acme encoding='UTF-8' lc_collate='de_DE.UTF-8' lc_ctype='de_DE.UTF-8' template='template0'" },
                          ]
      end
    end

    context 'array item colon issues' do
      context 'missing' do
        let(:module_name) { 'postgresql_db' }

        let(:input_yaml) do
          <<YAML
---
- postgresql_db
    aws_access_key: xxxxxxxxxxxxxxxxxxxxxxx
  register: instance
YAML
        end

        it do
          is_expected.to eq [
                              {
                                'postgresql_db' => {
                                  'aws_access_key' => 'xxxxxxxxxxxxxxxxxxxxxxx'
                                },
                                'register' => 'instance'
                              }
                            ]
        end
      end

      context 'extra space' do
        let(:module_name) { 'svc' }

        let(:input_yaml) do
          <<YAML

# Example action to stop svc dnscache, if running
 - svc: name=dnscache state=stopped

# Example action to kill svc dnscache, in all cases
 - svc : name=dnscache state=killed
# Example action to kill svc dnscache, in all cases
 - svc : name=dnscache state=restarted
YAML
        end

        it do
          is_expected.to eq [
                              { 'svc' => 'name=dnscache state=stopped' },
                              { 'svc' => 'name=dnscache state=killed' },
                              { 'svc' => 'name=dnscache state=restarted' }
                            ]
        end
      end
    end

    context 'inline keys' do
      let(:input_yaml) do
        <<YAML
# Example action to start svc dnscache, if not running
 - svc: name=dnscache state=started

# Example action to stop svc dnscache, if running
 - svc: name=dnscache state=stopped
YAML
      end

      it do
        is_expected.to eq [
                            { 'svc' => 'name=dnscache state=started' },
                            { 'svc' => 'name=dnscache state=stopped' }
                          ]
      end
    end

    context 'comments' do
      context 'led by #' do
        let(:input_yaml) do
          <<YAML
# No header here
- item1:
    value: 1
# A comment here
Some more

text

here

- item2:
    value: 2
YAML
        end

        it do
          is_expected.to eq [
                              {
                                'item1' => {
                                  'value' => 1
                                }
                              },
                              {
                                'item2' => {
                                  'value' => 2
                                }
                              }
                            ]
        end
      end

      context 'not led by #' do
        let(:input_yaml) do
          <<YAML
---
- item1:
    value: 1
Some more

text

here

- item2:
    value: 2
YAML
        end

        it do
          is_expected.to eq [
                              {
                                'item1' => {
                                  'value' => 1
                                }
                              },
                              {
                                'item2' => {
                                  'value' => 2
                                }
                              }
                            ]
        end
      end

      context 'valid' do
        context 'array' do
          let(:input_yaml) do
            <<YAML
---
- postgresql_db: name=acme
# Comment
- postgresql_db: name=acme
                 encoding='UTF-8'
YAML
          end

          it do
            is_expected.to eq [
                                { 'postgresql_db' => 'name=acme' },
                                { 'postgresql_db' => "name=acme encoding='UTF-8'" }
                              ]
          end
        end

        context 'hash' do
          let(:input_yaml) do
            <<YAML
---
postgresql_db: name=acme
# Comment
postgresql_db2: name=acme
                encoding='UTF-8'
YAML
          end

          it do
            is_expected.to eq({
                                'postgresql_db' => 'name=acme',
                                'postgresql_db2' => "name=acme encoding='UTF-8'"
                              })
          end
        end
      end
    end

    context 'too much indenting' do
      let(:input_yaml) do
        <<YAML
    - name: Create a network interface with minimal parameters
        azure_rm_networkinterface:
            name: nic001

     - name: Create a network interface with private IP address only (no Public IP)
        azure_rm_networkinterface:
            name: nic002
YAML
      end

      it do
        is_expected.to eq [
                            {
                              'name' => 'Create a network interface with minimal parameters',
                              'azure_rm_networkinterface' => {
                                'name' => 'nic001'
                              }
                            },
                            {
                              'name' => 'Create a network interface with private IP address only (no Public IP)',
                              'azure_rm_networkinterface' => {
                                'name' => 'nic002'
                              }
                            }
                          ]
      end
    end
  end
end
