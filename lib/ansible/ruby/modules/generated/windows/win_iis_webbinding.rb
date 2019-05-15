# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, removes and configures a binding to an existing IIS Web site.
      class Win_iis_webbinding < Base
        # @return [String] Names of web site.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] State of the binding.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] The port to bind to / use for the new site.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] The IP address to bind to / use for the new site.
        attribute :ip
        validates :ip, type: String

        # @return [String, nil] The host header to bind to / use for the new site.,If you are creating/removing a catch-all binding, omit this parameter rather than defining it as '*'.
        attribute :host_header
        validates :host_header, type: String

        # @return [String, nil] The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] Certificate hash (thumbprint) for the SSL binding. The certificate hash is the unique identifier for the certificate.
        attribute :certificate_hash
        validates :certificate_hash, type: String

        # @return [String, nil] Name of the certificate store where the certificate for the binding is located.
        attribute :certificate_store_name
        validates :certificate_store_name, type: String

        # @return [Integer, nil] This parameter is only valid on Server 2012 and newer.,Primarily used for enabling and disabling server name indication (SNI).,Set to c(0) to disable SNI.,Set to c(1) to enable SNI.
        attribute :ssl_flags
        validates :ssl_flags, type: Integer
      end
    end
  end
end
