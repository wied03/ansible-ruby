# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures a binding to an existing IIS Web site
      class Win_iis_webbinding < Base
        # @return [String] Names of web site
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] State of the binding
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] The port to bind to / use for the new site.
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] The IP address to bind to / use for the new site.
        attribute :ip

        # @return [Object, nil] The host header to bind to / use for the new site.
        attribute :host_header

        # @return [String, nil] The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] Certificate hash for the SSL binding. The certificate hash is the unique identifier for the certificate.
        attribute :certificate_hash
        validates :certificate_hash, type: String

        # @return [String, nil] Name of the certificate store where the certificate for the binding is located.
        attribute :certificate_store_name
        validates :certificate_store_name, type: String
      end
    end
  end
end
