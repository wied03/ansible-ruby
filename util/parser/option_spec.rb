# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './option'

describe Ansible::Ruby::Parser::Option do
  describe '::parse' do
    # match the expected multiline string stuff
    subject { Ansible::Ruby::Parser::Option.parse(name, details, example)+"\n" }
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
      let(:details) do
        {
          description: ['The username used to authenticate with'],
          required: required,
          default: 'present',
          choices: %w(present absent)
        }
      end

      context 'required' do
        let(:required) { true }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, presence: true, type: String, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
RUBY
        end
      end

      context 'not required' do
        let(:required) { false }

        it do
          is_expected.to eq <<RUBY
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, type: String, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
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
