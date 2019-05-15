# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Builds Redfish URIs locally and sends them to remote OOB controllers to set or update a configuration attribute.
      # Manages BIOS configuration settings.
      # Manages OOB controller configuration settings.
      class Redfish_config < Base
        # @return [String] Category to execute on OOB controller
        attribute :category
        validates :category, presence: true, type: String

        # @return [String] List of commands to execute on OOB controller
        attribute :command
        validates :command, presence: true, type: String

        # @return [String] Base URI of OOB controller
        attribute :baseuri
        validates :baseuri, presence: true, type: String

        # @return [String] User for authentication with OOB controller
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password for authentication with OOB controller
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] name of BIOS attribute to update
        attribute :bios_attr_name
        validates :bios_attr_name, type: String

        # @return [String, nil] value of BIOS attribute to update
        attribute :bios_attr_value
        validates :bios_attr_value, type: String

        # @return [String, nil] name of Manager attribute to update
        attribute :mgr_attr_name
        validates :mgr_attr_name, type: String

        # @return [String, nil] value of Manager attribute to update
        attribute :mgr_attr_value
        validates :mgr_attr_value, type: String
      end
    end
  end
end
