# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides user management for ejabberd servers
      class Ejabberd_user < Base
        # @return [String] the name of the user to manage
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] the ejabberd host associated with this username
        attribute :host
        validates :host, presence: true, type: String

        # @return [String, nil] the password to assign to the username
        attribute :password
        validates :password, type: String

        # @return [Boolean, nil] enables or disables the local syslog facility for this module
        attribute :logging
        validates :logging, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] describe the desired state of the user to be managed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
