# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Netconf is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.
      # This module allows the user to send a configuration XML file to a netconf device, and detects if there was a configuration change.
      class Netconf_config < Base
        # @return [String, nil] The configuration data as defined by the device's data models, the value can be either in xml string format or text format. The format of the configuration should be supported by remote Netconf server
        attribute :content
        validates :content, type: String

        # @return [String, nil] Name of the configuration datastore to be edited. - auto, uses candidate and fallback to running - candidate, edit <candidate/> datastore and then commit - running, edit <running/> datastore directly
        attribute :target
        validates :target, type: String

        # @return [Object, nil] Name of the configuration datastore to use as the source to copy the configuration to the datastore mentioned by C(target) option. The values can be either I(running), I(candidate), I(startup) or a remote URL
        attribute :source_datastore

        # @return [:xml, :text, nil] The format of the configuration provided as value of C(content). Accepted values are I(xml) and I(text) and the given configuration format should be supported by remote Netconf server.
        attribute :format
        validates :format, expression_inclusion: {:in=>[:xml, :text], :message=>"%{value} needs to be :xml, :text"}, allow_nil: true

        # @return [:never, :always, :"if-supported", nil] Instructs the module to explicitly lock the datastore specified as C(target). By setting the option value I(always) is will explicitly lock the datastore mentioned in C(target) option. It the value is I(never) it will not lock the C(target) datastore. The value I(if-supported) lock the C(target) datastore only if it is supported by the remote Netconf server.
        attribute :lock
        validates :lock, expression_inclusion: {:in=>[:never, :always, :"if-supported"], :message=>"%{value} needs to be :never, :always, :\"if-supported\""}, allow_nil: true

        # @return [:merge, :replace, :none, nil] The default operation for <edit-config> rpc, valid values are I(merge), I(replace) and I(none). If the default value is merge, the configuration data in the C(content) option is merged at the corresponding level in the C(target) datastore. If the value is replace the data in the C(content) option completely replaces the configuration in the C(target) datastore. If the value is none the C(target) datastore is unaffected by the configuration in the config option, unless and until the incoming configuration data uses the C(operation) operation to request a different operation.
        attribute :default_operation
        validates :default_operation, expression_inclusion: {:in=>[:merge, :replace, :none], :message=>"%{value} needs to be :merge, :replace, :none"}, allow_nil: true

        # @return [Integer, nil] This argument will configure a timeout value for the commit to be confirmed before it is automatically rolled back. If the C(confirm_commit) argument is set to False, this argument is silently ignored. If the value of this argument is set to 0, the commit is confirmed immediately. The remote host MUST support :candidate and :confirmed-commit capability for this option to .
        attribute :confirm
        validates :confirm, type: Integer

        # @return [:yes, :no, nil] This argument will execute commit operation on remote device. It can be used to confirm a previous commit.
        attribute :confirm_commit
        validates :confirm_commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:"stop-on-error", :"continue-on-error", :"rollback-on-error", nil] This option control the netconf server action after a error is occured while editing the configuration. If the value is I(stop-on-error) abort the config edit on first error, if value is I(continue-on-error) it continues to process configuration data on error, error is recorded and negative response is generated if any errors occur. If value is C(rollback-on-error) it rollback to the original configuration in case any error occurs, this requires the remote Netconf server to support the :rollback-on-error capability.
        attribute :error_option
        validates :error_option, expression_inclusion: {:in=>[:"stop-on-error", :"continue-on-error", :"rollback-on-error"], :message=>"%{value} needs to be :\"stop-on-error\", :\"continue-on-error\", :\"rollback-on-error\""}, allow_nil: true

        # @return [Boolean, nil] The C(save) argument instructs the module to save the configuration in C(target) datastore to the startup-config if changed and if :startup capability is supported by Netconf server.
        attribute :save
        validates :save, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.
        attribute :backup
        validates :backup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] It instructs the module to delete the configuration from value mentioned in C(target) datastore.
        attribute :delete
        validates :delete, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Boolean, nil] This boolean flag controls if the configuration changes should be committed or not after editing the candidate datastore. This option is supported only if remote Netconf server supports :candidate capability. If the value is set to I(False) commit won't be issued after edit-config operation and user needs to handle commit or discard-changes explicitly.
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] This boolean flag if set validates the content of datastore given in C(target) option. For this option to work remote Netconf server shoule support :validate capability.
        attribute :validate
        validates :validate, type: Symbol

        # @return [Object, nil] Specifies the source path to the xml file that contains the configuration or configuration template to load. The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory. This argument is mutually exclusive with I(xml).
        attribute :src
      end
    end
  end
end
