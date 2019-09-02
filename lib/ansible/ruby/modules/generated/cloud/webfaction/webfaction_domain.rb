# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove domains or subdomains on a Webfaction host. Further documentation at https://github.com/quentinsf/ansible-webfaction.
      class Webfaction_domain < Base
        # @return [String] The name of the domain
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the domain should exist
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Any subdomains to create.
        attribute :subdomains

        # @return [String] The webfaction account to use
        attribute :login_name
        validates :login_name, presence: true, type: String

        # @return [String] The webfaction password to use
        attribute :login_password
        validates :login_password, presence: true, type: String
      end
    end
  end
end
