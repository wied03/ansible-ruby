# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Builds Redfish URIs locally and sends them to remote OOB controllers to perform an action.
      # Manages OOB controller ex. reboot, log management.
      # Manages OOB controller users ex. add, remove, update.
      # Manages system power ex. on, off, graceful and forced reboot.
      class Redfish_command < Base
        # @return [String] Category to execute on OOB controller
        attribute :category
        validates :category, presence: true, type: String

        # @return [Array<String>, String] List of commands to execute on OOB controller
        attribute :command
        validates :command, presence: true, type: TypeGeneric.new(String)

        # @return [String] Base URI of OOB controller
        attribute :baseuri
        validates :baseuri, presence: true, type: String

        # @return [String] User for authentication with OOB controller
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password for authentication with OOB controller
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] ID of user to add/delete/modify
        attribute :userid
        validates :userid, type: String

        # @return [String, nil] name of user to add/delete/modify
        attribute :username
        validates :username, type: String

        # @return [String, nil] password of user to add/delete/modify
        attribute :userpswd
        validates :userpswd, type: String

        # @return [String, nil] role of user to add/delete/modify
        attribute :userrole
        validates :userrole, type: String

        # @return [String, nil] bootdevice when setting boot configuration
        attribute :bootdevice
        validates :bootdevice, type: String
      end
    end
  end
end
