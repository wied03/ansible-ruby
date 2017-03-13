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
          { 'postgresql_db' => "name=acme encoding='UTF-8' lc_collate='de_DE.UTF-8' lc_ctype='de_DE.UTF-8' template='template0'" }
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

    context 'hash containing array' do
      let(:input_yaml) do
        <<YAML
---
module: datadog_monitor
description:
- "Manages monitors within Datadog"
version_added: "2.0"
YAML
      end

      it do
        is_expected.to eq('module' => 'datadog_monitor',
                          'description' => [
                            'Manages monitors within Datadog'
                          ],
                          'version_added' => '2.0')
      end
    end

    context 'line continuation' do
      let(:input_yaml) do
        <<YAML
---
hash:
  - value 1
  - value 2 \\
goes on to next line
  - value 3
YAML
      end

      it do
        is_expected.to eq('hash' => [
                            'value 1',
                            'value 2goes on to next line',
                            'value 3'
                          ])
      end
    end
  end
end
