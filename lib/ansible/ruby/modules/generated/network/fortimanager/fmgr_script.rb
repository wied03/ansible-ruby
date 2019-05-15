# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/edit/delete scripts and execute the scripts on the FortiManager using jsonrpc API
      class Fmgr_script < Base
        # @return [String] The administrative domain (admon) the configuration belongs to
        attribute :adom
        validates :adom, presence: true, type: String

        # @return [Object, nil] The virtual domain (vdom) the configuration belongs to
        attribute :vdom

        # @return [String] The FortiManager's Address.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] The username to log into the FortiManager
        attribute :username
        validates :username, presence: true, type: String

        # @return [String, nil] The password associated with the username account.
        attribute :password
        validates :password, type: String

        # @return [:present, :execute, :delete, nil] The desired state of the specified object.,present - will create a script.,execute - execute the scipt.,delete - delete the script.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :execute, :delete], :message=>"%{value} needs to be :present, :execute, :delete"}, allow_nil: true

        # @return [String] The name of the script.
        attribute :script_name
        validates :script_name, presence: true, type: String

        # @return [String, nil] The type of script (CLI or TCL).
        attribute :script_type
        validates :script_type, type: String

        # @return [String, nil] The target of the script to be run.
        attribute :script_target
        validates :script_target, type: String

        # @return [String, nil] The description of the script.
        attribute :script_description
        validates :script_description, type: String

        # @return [String, nil] The script content that will be executed.
        attribute :script_content
        validates :script_content, type: String

        # @return [Array<String>, String, nil] (datasource) The devices that the script will run on, can have both device member and device group member.
        attribute :script_scope
        validates :script_scope, type: TypeGeneric.new(String)

        # @return [Object, nil] (datasource) Policy package object to run the script against
        attribute :script_package
      end
    end
  end
end
