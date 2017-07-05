# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create address service object of different types [IP Range, FQDN, or IP Netmask].
      class Panos_address < Base
        # @return [String] IP address (or hostname) of PAN-OS device being configured.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Username credentials to use for authentication.
        attribute :username
        validates :username, type: String

        # @return [String] Password credentials to use for authentication.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] IP address with or without mask, range, or FQDN.
        attribute :address
        validates :address, presence: true, type: String

        # @return [String] Human readable name of the address.
        attribute :address_name
        validates :address_name, presence: true, type: String

        # @return [:"ip-netmask", :fqdn, :"ip-range", nil] This is the type of the object created.
        attribute :type
        validates :type, inclusion: {:in=>[:"ip-netmask", :fqdn, :"ip-range"], :message=>"%{value} needs to be :\"ip-netmask\", :fqdn, :\"ip-range\""}, allow_nil: true

        # @return [String, nil] Description of the address object.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Tag of the address object.
        attribute :tag
        validates :tag, type: String

        # @return [Boolean, nil] Commit configuration to the Firewall if it is changed.
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
