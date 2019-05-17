# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Certain E-Series systems have the capability to send email notifications on potentially critical events.
      # This module will allow the owner of the system to specify email recipients for these messages.
      class Netapp_e_alerts < Base
        # @return [:enabled, :disabled, nil] Enable/disable the sending of email-based alerts.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] A fully qualified domain name, IPv4 address, or IPv6 address of a mail server.,To use a fully qualified domain name, you must configure a DNS server on both controllers using M(netapp_e_mgmt_interface). - Required when I(state=enabled).
        attribute :server
        validates :server, type: String

        # @return [String, nil] This is the sender that the recipient will see. It doesn't necessarily need to be a valid email account.,Required when I(state=enabled).
        attribute :sender
        validates :sender, type: String

        # @return [String, nil] Allows the owner to specify some free-form contact information to be included in the emails.,This is typically utilized to provide a contact phone number.
        attribute :contact
        validates :contact, type: String

        # @return [Array<String>, String, nil] The email addresses that will receive the email notifications.,Required when I(state=enabled).
        attribute :recipients
        validates :recipients, type: TypeGeneric.new(String)

        # @return [Symbol, nil] When a change is detected in the configuration, a test email will be sent.,This may take a few minutes to process.,Only applicable if I(state=enabled).
        attribute :test
        validates :test, type: Symbol

        # @return [Object, nil] Path to a file on the Ansible control node to be used for debug logging
        attribute :log_path
      end
    end
  end
end
