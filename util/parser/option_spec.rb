# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './option'

describe Ansible::Ruby::Parser::Option do
  describe '::parse' do
    # match the expected multiline string stuff
    subject { Ansible::Ruby::Parser::Option.parse(name, details, example).join("\n")+"\n" }
    let(:name) { 'login_user' }
    let(:example) do
      [
        { "postgresql_db" => "name=acme" },
        { "postgresql_db" => "name=acme encoding='UTF-8' lc_collate='de_DE.UTF-8' lc_ctype='de_DE.UTF-8' template='template0' else=55" }
      ]
    end

    context 'optional' do
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: false,
          default: nil
        }
      end

      it do
        is_expected.to eq <<RUBY
# @return [Object] The username used to authenticate with
attribute :login_user
RUBY
      end
    end

    context 'required' do
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: true,
          default: nil
        }
      end

      it do
        is_expected.to eq <<RUBY
# @return [Object] The username used to authenticate with
attribute :login_user
validates :login_user, presence: true
RUBY
      end
    end

    context 'choices' do
      let(:choices) { %w(present absent) }

      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: required,
          default: 'present',
          choices: choices
        }
      end

      context 'required' do
        let(:required) { true }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
RUBY
        end
      end

      context 'not required' do
        let(:required) { false }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
RUBY
        end
      end

      context 'no included' do
        # is really [present, no, yes] in YAML
        let(:choices) { ['present', true, false] }
        let(:required) { false }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, inclusion: {:in=>[:present, true, false], :message=>"%{value} needs to be :present, true, false"}, allow_nil: true
RUBY
        end
      end

      context 'integers' do
        let(:choices) { [1, 2, 3] }

        let(:required) { false }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, inclusion: {:in=>[1, 2, 3], :message=>"%{value} needs to be 1, 2, 3"}, allow_nil: true
RUBY
        end
      end
    end

    context 'type from default' do
      { String => 'foo', Fixnum => 1, Float => 1.5 }.each do |type, value|
        context type do
          let(:details) do
            {
              description: ['The username used to authenticate with'],
              default: value
            }
          end

          it do
            is_expected.to eq <<RUBY
# @return [#{type}] The username used to authenticate with
attribute :login_user
validates :login_user, type: #{type}
RUBY
          end
        end
      end
    end

    context 'array' do
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          default: array_value
        }
      end
      context 'string' do
        let(:array_value) { 'hello,there' }

        it do
          is_expected.to eq <<RUBY
# @return [Array<String>] The username used to authenticate with
attribute :login_user, flat_array: true
validates :login_user, type: TypeGeneric.new(String)
RUBY
        end
      end

      context 'integer' do
        let(:array_value) { '123,456' }

        it do
          is_expected.to eq <<RUBY
# @return [Array<Integer>] The username used to authenticate with
attribute :login_user, flat_array: true
validates :login_user, type: TypeGeneric.new(Integer)
RUBY
        end
      end

      context 'float' do
        let(:array_value) { '123.12,456.89' }

        it do
          is_expected.to eq <<RUBY
# @return [Array<Float>] The username used to authenticate with
attribute :login_user, flat_array: true
validates :login_user, type: TypeGeneric.new(Float)
RUBY
        end
      end
    end

    context 'type and required' do
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: true,
          default: 'foobar'
        }
      end

      it do
        is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, presence: true, type: String
RUBY
      end
    end

    context 'from example' do
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: false,
          default: nil
        }
      end

      context 'on its own' do
        let(:name) { 'name' }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :name
validates :name, type: String
RUBY
        end
      end

      # some are more inline, this is how cloudformation.py is
      context 'list of tasks' do
        let(:name) { 'name' }

        let(:example) do
          [
            {
              "name" => 'some task',
              'cloudformation' => {
                'name' => 444.44,
                'something' => 'else'
              }
            }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [Float] The username used to authenticate with
attribute :name
validates :name, type: Float
RUBY
        end
      end

      context 'mix of hash and inline' do
        let(:name) { 'stack_name' }

        let(:example) do
          [
            {
              "name" => 'some task',
              'cloudformation' => "stack_name=\"ansible-cloudformation\" state=present region=us-east-1 disable_rollback=true template_url=https://s3.amazonaws.com/my-bucket/cloudformation.template"
            }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :stack_name
validates :stack_name, type: String
RUBY
        end
      end

      context 'something like parser fail' do
        let(:name) { 'something' }

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
          is_expected.to eq <<RUBY
# @return [Float] The username used to authenticate with
attribute :something
validates :something, type: Float
RUBY
        end
      end

      context 'hash' do
        let(:name) { 'something' }

        let(:example) do
          [
            {
              "name" => 'some task',
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
          is_expected.to eq <<RUBY
# @return [Hash] The username used to authenticate with
attribute :something
validates :something, type: Hash
RUBY
        end
      end

      context 'args' do
        let(:name) { 'something' }

        let(:example) do
          [
            {
              "name" => 'some task',
              'cloudformation' => "stack_name=\"ansible-cloudformation\" state=present region=us-east-1 disable_rollback=true template_url=https://s3.amazonaws.com/my-bucket/cloudformation.template",
              'args' => {
                'something' => {
                  'setting1' => true
                }
              }
            }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [Hash] The username used to authenticate with
attribute :something
validates :something, type: Hash
RUBY
        end
      end

      context 'playbook' do
        let(:name) { 'something' }

        let(:example) do
          [
            {
              "name" => 'some task',
              'cloudformation' => {
                'name' => 444.44,
                'something' => 'else'
              }
            },
            {
              "name" => 'some task',
              'become' => true,
              'gather_facts' => true,
              'roles' => %w(role1 role2)
            }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :something
validates :something, type: String
RUBY
        end
      end

      context 'multiple equals' do
        let(:name) { 'name' }

        let(:example) do
          [
            { "postgresql_db" => "apt: name=foo=1.00 state=present" }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :name
validates :name, type: String
RUBY
        end
      end

      context 'quoted' do
        let(:name) { 'template' }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :template
validates :template, type: String
RUBY
        end
      end

      context 'array' do
        let(:name) { 'name' }

        let(:example) do
          [
            { "postgresql_db" => "apt: name='12,13' state=present" }
          ]
        end

        it do
          is_expected.to eq <<RUBY
# @return [Array<Integer>] The username used to authenticate with
attribute :name, flat_array: true
validates :name, type: TypeGeneric.new(Integer)
RUBY
        end
      end
    end
  end
end
