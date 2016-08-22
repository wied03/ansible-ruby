# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './option'

fdescribe Ansible::Ruby::Parser::Option do
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
# @return [String] The username used to authenticate with
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
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, presence: true
RUBY
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
# @return [String] The username used to authenticate with
attribute :login_user
validates :login_user, type: #{type}
RUBY
          end
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
        # see apt
        pending 'write this'
      end

      context 'quoted' do
        pending 'write this'
      end
    end
  end
end
