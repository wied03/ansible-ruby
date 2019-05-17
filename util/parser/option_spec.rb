# frozen_string_literal: true

# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './option'
require_relative '../option_formatter'

describe Ansible::Ruby::Parser::Option do
  describe '::parse' do
    subject(:option_data) {Ansible::Ruby::Parser::Option.parse(name, details, example)}

    let(:name) {'login_user'}
    let(:example) {false}
    let(:required) {false}
    let(:default) {nil}
    let(:description) {['The username used to authenticate with']}
    let(:choices) {nil}
    let(:type) {nil}

    let(:details) do
      {
        description: description,
        required: required,
        default: default,
        choices: choices,
        type: type
      }
    end

    context 'optional' do
      context 'yes' do
        it {is_expected.to be_a Ansible::Ruby::Parser::OptionData}
        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         choices: nil
        end
      end

      context 'no' do
        let(:required) {true}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: true,
                                         choices: nil
        end
      end
    end

    context 'description' do
      context 'is string' do
        let(:description) {'The username used to authenticate with'}

        it do
          is_expected.to have_attributes description: ['The username used to authenticate with'],
                                         name: 'login_user'
        end
      end

      context 'contains carriage return' do
        let(:description) {["The username used to authenticate with \r\n something"]}

        it do
          is_expected.to have_attributes description: ['The username used to authenticate with \\r\\n something'],
                                         name: 'login_user'
        end
      end
    end

    context 'choices' do
      let(:choices) {%w[present absent]}
      let(:default) {'present'}
      let(:required) {false}

      context 'required' do
        let(:required) {true}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: true,
                                         types: [String],
                                         choices: %i[present absent]
        end
      end

      context 'not required' do
        let(:required) {false}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         types: [String],
                                         choices: %i[present absent]
        end
      end

      context 'different types' do
        let(:default) {'abc'}
        let(:choices) {[1, 'abc']}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         types: [],
                                         choices: [1, :abc]
        end
      end

      context 'no default' do
        let(:default) {nil}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         types: [Symbol],
                                         choices: %i[present absent]
        end
      end

      context 'no included' do
        context 'with string' do
          # is really [present, no, yes] in YAML
          let(:choices) {['present', true, false]}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           types: [],
                                           choices: [:present, true, false]
          end
        end

        context 'boolean without string' do
          let(:choices) {[true, false]}
          let(:default) {nil}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           types: [TrueClass, FalseClass],
                                           choices: [true, false]
          end
        end
      end

      context 'integers' do
        let(:choices) {[1, 2, 3]}
        let(:default) {nil}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         types: [Integer],
                                         choices: [1, 2, 3]
        end
      end

      context 'empty' do
        let(:choices) {[]}

        context 'default' do
          let(:default) {123}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           types: [Integer],
                                           choices: nil
          end
        end

        context 'no default' do
          let(:default) {nil}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           types: [],
                                           choices: nil
          end
        end
      end
    end

    context 'default' do
      { String => 'foo', Integer => 1, Float => 1.5 }.each do |type, value|
        context type do
          let(:default) {value}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           types: [type],
                                           choices: nil
          end
        end
      end

      context 'None string' do
        let(:default) {'None'}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         types: [],
                                         choices: nil
        end
      end

      [true, false].each do |bool_test|
        context bool_test do
          let(:default) {bool_test}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           choices: [true, false],
                                           types: include(TrueClass, FalseClass)
          end
        end
      end

      context 'flat array' do
        context 'string' do
          let(:default) {'hello,there'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic String}
        end

        context 'integer' do
          let(:default) {'123,456'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic Integer}
        end

        context 'float' do
          let(:default) {'123.12,456.89'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           required?: false,
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic Float}
        end
      end

      context 'flat hash' do
        let(:default) {'{"Name":"SuperService-new-AMI", "type":"SuperService"}'}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         required?: false,
                                         choices: nil,
                                         types: [Hash]
        end
      end
    end

    context 'from example' do
      context 'on its own' do
        let(:name) {'name'}
        let(:example) do
          [
            { 'postgresql_db' => 'name=acme' },
            { 'postgresql_db' => "name=acme encoding='UTF-8' lc_collate='de_DE.UTF-8' lc_ctype='de_DE.UTF-8' template='template0' else=55" }
          ]
        end

        it do
          is_expected.to have_attributes name: 'name',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'list of tasks' do
        let(:name) {'username'}
        let(:example) do
          {
            'tasks' => [
              {
                'name' => 'create stuff',
                'action' => 'ejabberd_user username=test host=server password=password'
              }
            ]
          }
        end

        it do
          is_expected.to have_attributes name: 'username',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'false value/no examples' do
        let(:name) {'name'}
        let(:example) {false}

        it do
          is_expected.to have_attributes name: 'name',
                                         choices: nil,
                                         types: []
        end
      end

      # some are more inline, this is how cloudformation.py is
      context 'list of tasks' do
        let(:name) {'name'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => {
                'name' => 444.44,
                'something' => 'else'
              }
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'name',
                                         choices: nil,
                                         types: [Float]
        end
      end

      context 'Ansible variable' do
        let(:name) {'name'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => {
                'name' => variable
              }
            }
          ]
        end

        context 'normal' do
          let(:variable) {"{{ lookup('file','policy.json') }}"}

          it do
            is_expected.to have_attributes name: 'name',
                                           choices: nil,
                                           types: [String]
          end
        end

        context 'leading spaces' do
          let(:variable) {"  {{ lookup('file','policy.json') }}"}

          it do
            is_expected.to have_attributes name: 'name',
                                           choices: nil,
                                           types: [String]
          end
        end
      end

      context 'mix of hash and inline' do
        let(:name) {'stack_name'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => 'stack_name="ansible-cloudformation" state=present region=us-east-1 disable_rollback=true template_url=https://s3.amazonaws.com/my-bucket/cloudformation.template'
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'stack_name',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'play type syntax' do
        let(:name) {'something'}

        let(:example) do
          [
            'postgresql_db' => {
              'something' => 450.4,
              'name' => 'newtest'
            },
            'register' => 'instance'
          ]
        end

        it do
          is_expected.to have_attributes name: 'something',
                                         choices: nil,
                                         types: [Float]
        end
      end

      context 'hash' do
        let(:name) {'something'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => {
                'name' => 444.44,
                'something' => {
                  'setting1' => true
                }
              }
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'something',
                                         choices: nil,
                                         types: [Hash]
        end
      end

      context 'args' do
        let(:name) {'something'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => 'stack_name="ansible-cloudformation" state=present region=us-east-1 disable_rollback=true template_url=https://s3.amazonaws.com/my-bucket/cloudformation.template',
              'args' => {
                'something' => {
                  'setting1' => true
                }
              }
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'something',
                                         choices: nil,
                                         types: [Hash]
        end
      end

      context 'playbook' do
        let(:name) {'something'}

        let(:example) do
          [
            {
              'name' => 'some task',
              'cloudformation' => {
                'name' => 444.44,
                'something' => 'else'
              }
            },
            {
              'name' => 'some task',
              'become' => true,
              'gather_facts' => true,
              'roles' => %w[role1 role2]
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'something',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'multiple equals' do
        let(:name) {'name'}

        let(:example) do
          [
            { 'postgresql_db' => 'apt: name=foo=1.00 state=present' }
          ]
        end

        it do
          is_expected.to have_attributes name: 'name',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'quoted' do
        let(:name) {'template'}
        let(:example) do
          [
            { 'postgresql_db' => 'name=acme' },
            { 'postgresql_db' => "name=acme encoding='UTF-8' lc_collate='de_DE.UTF-8' lc_ctype='de_DE.UTF-8' template='template0' else=55" }
          ]
        end

        it do
          is_expected.to have_attributes name: 'template',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'flat array' do
        let(:name) {'name'}

        let(:example) do
          [
            { 'postgresql_db' => "apt: name='12,13' state=present" }
          ]
        end

        it do
          is_expected.to have_attributes name: 'name',
                                         choices: nil,
                                         types: [TypeGeneric]
        end

        it {is_expected.to have_type_generic Integer}
      end

      context 'example has multiple types' do
        let(:name) {'lines'}

        let(:example) do
          [
            {
              'postgresql_db' => {
                'lines' => 'hello'
              }
            },
            {
              'postgresql_db' => {
                'lines' => 456
              }
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'lines',
                                         choices: nil,
                                         types: [String, Integer]
        end
      end

      context 'example has array' do
        let(:name) {'lines'}

        context 'array of different types' do
          let(:example) do
            [
              {
                'postgresql_db' => {
                  'lines' => %w[hello there 123]
                }
              }
            ]
          end

          it do
            is_expected.to have_attributes name: 'lines',
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic String}
        end

        context 'only array' do
          let(:example) do
            [
              {
                'postgresql_db' => {
                  'lines' => %w[hello there dude]
                }
              },
              {
                'postgresql_db' => {
                  'lines' => %w[hello there again]
                }
              }
            ]
          end

          it do
            is_expected.to have_attributes name: 'lines',
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic String}
        end

        context 'array comes before non-array value' do
          let(:example) do
            [
              {
                'postgresql_db' => {
                  'lines' => %w[hello there dude]
                }
              },
              {
                'postgresql_db' => {
                  'lines' => 'howdy'
                }
              }
            ]
          end

          it do
            is_expected.to have_attributes name: 'lines',
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic String}
        end

        context 'array comes after non-array value' do
          let(:example) do
            [
              {
                'postgresql_db' => {
                  'lines' => 'howdy'
                }
              },
              {
                'postgresql_db' => {
                  'lines' => %w[hello there dude]
                }
              }
            ]
          end

          it do
            is_expected.to have_attributes name: 'lines',
                                           choices: nil,
                                           types: [TypeGeneric]
          end

          it {is_expected.to have_type_generic String}
        end
      end

      context 'double equals' do
        let(:name) {'lines'}
        let(:example) do
          [
            {
              'postgresql_db' => nil,
              'lines' => [
                'result[0].sys_ver_str == 7.2(0)D1(1)',
                'foo'
              ]
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'lines',
                                         choices: nil,
                                         types: []
        end
      end

      context 'empty choices' do
        let(:name) {'username'}
        let(:choices) {[]}
        let(:example) do
          {
            'tasks' => [
              {
                'name' => 'create stuff',
                'action' => 'ejabberd_user username=test host=server password=password'
              }
            ]
          }
        end

        it do
          is_expected.to have_attributes name: 'username',
                                         choices: nil,
                                         types: [String]
        end
      end

      context 'multiple types' do
        let(:name) {'lines'}
        let(:example) do
          [
            {
              'postgresql_db' => {
                'lines' => ['howdy']
              }
            },
            {
              'postgresql_db' => {
                'lines' => [{ hello: 'there' }]
              }
            }
          ]
        end

        it do
          is_expected.to have_attributes name: 'lines',
                                         choices: nil,
                                         types: [TypeGeneric]
        end

        it {is_expected.to have_type_generic String, Hash}
      end
    end

    context 'type provided' do
      context 'int' do
        let(:type) {'int'}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         types: [Integer],
                                         choices: nil
        end
      end

      context 'string' do
        let(:type) {'str'}

        context 'without choices' do
          it do
            is_expected.to have_attributes name: 'login_user',
                                           types: [String],
                                           choices: nil
          end
        end

        context 'path' do
          let(:type) {'path'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           types: [String],
                                           choices: nil
          end
        end

        context 'with choices' do
          let(:choices) {
            %w(a b)
          }

          it do
            is_expected.to have_attributes name: 'login_user',
                                           types: [Symbol],
                                           choices: %i[a b]
          end
        end
      end

      context 'bool' do
        let(:type) {'bool'}

        context 'yes/no' do
          let(:default) {'no'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           types: [Symbol],
                                           choices: %i[yes no]
          end
        end

        context 'True/False' do
          let(:default) {'True'}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           choices: [true, false],
                                           types: include(TrueClass, FalseClass)
          end
        end

        context 'true/false' do
          let(:default) {true}

          it do
            is_expected.to have_attributes name: 'login_user',
                                           choices: [true, false],
                                           types: include(TrueClass, FalseClass)
          end
        end
      end

      context 'list' do
        let(:type) {'list'}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         types: [TypeGeneric],
                                         choices: nil
        end
        it {is_expected.to have_type_generic String}
      end

      context 'dict' do
        let(:type) {'dict'}

        it do
          is_expected.to have_attributes name: 'login_user',
                                         types: [Hash],
                                         choices: nil
        end
      end
    end
  end
end
