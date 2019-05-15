# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to create and delete devices in CA Spectrum U(https://www.ca.com/us/products/ca-spectrum.html).
      # Tested on CA Spectrum 9.4.2, 10.1.1 and 10.2.1
      class Spectrum_device < Base
        # @return [String] IP address of the device.,If a hostname is given, it will be resolved to the IP address.
        attribute :device
        validates :device, presence: true, type: String

        # @return [String, nil] SNMP community used for device discovery.,Required when C(state=present).
        attribute :community
        validates :community, type: String

        # @return [String] Landscape handle of the SpectroServer to which add or remove the device.
        attribute :landscape
        validates :landscape, presence: true, type: String

        # @return [:present, :absent, nil] On C(present) creates the device when it does not exist.,On C(absent) removes the device when it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] HTTP, HTTPS URL of the Oneclick server in the form (http|https)://host.domain[:port]
        attribute :url
        validates :url, presence: true

        # @return [Object] Oneclick user name.
        attribute :url_username
        validates :url_username, presence: true

        # @return [Object] Oneclick user password.
        attribute :url_password
        validates :url_password, presence: true

        # @return [String, nil] if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.
        attribute :use_proxy
        validates :use_proxy, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [Integer, nil] UDP port used for SNMP discovery.
        attribute :agentport
        validates :agentport, type: Integer
      end
    end
  end
end
