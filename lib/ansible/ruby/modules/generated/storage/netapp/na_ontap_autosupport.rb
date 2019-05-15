# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable/Disable Autosupport
      class Na_ontap_autosupport < Base
        # @return [:present, :absent, nil] Specifies whether the AutoSupport daemon is present or absent.,When this setting is absent, delivery of all AutoSupport messages is turned off.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name fo the filer that owns the AutoSupport Configuration.
        attribute :node_name
        validates :node_name, presence: true, type: String

        # @return [:http, :https, :smtp, nil] The name of the transport protocol used to deliver AutoSupport messages
        attribute :transport
        validates :transport, inclusion: {:in=>[:http, :https, :smtp], :message=>"%{value} needs to be :http, :https, :smtp"}, allow_nil: true

        # @return [Array<String>, String, nil] Specifies up to five recipients of full AutoSupport e-mail messages.
        attribute :noteto
        validates :noteto, type: TypeGeneric.new(String)

        # @return [String, nil] The URL used to deliver AutoSupport messages via HTTP POST
        attribute :post_url
        validates :post_url, type: String

        # @return [Array<String>, String, nil] List of mail server(s) used to deliver AutoSupport messages via SMTP.,Both host names and IP addresses may be used as valid input.
        attribute :mail_hosts
        validates :mail_hosts, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Specifies whether AutoSupport notification to technical support is enabled.
        attribute :support
        validates :support, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
