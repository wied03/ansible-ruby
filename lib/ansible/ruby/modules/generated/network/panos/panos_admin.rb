# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # PanOS module that allows changes to the user account passwords by doing API calls to the Firewall using pan-api as the protocol.
      class Panos_admin < Base
        # @return [String, nil] username for admin user
        attribute :admin_username
        validates :admin_username, type: String

        # @return [String] password for admin user
        attribute :admin_password
        validates :admin_password, presence: true, type: String

        # @return [Object, nil] role for admin user
        attribute :role

        # @return [:yes, :no, nil] commit if changed
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
