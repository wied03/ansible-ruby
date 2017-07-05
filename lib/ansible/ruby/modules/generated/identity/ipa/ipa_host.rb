# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete an IPA host using IPA API
      class Ipa_host < Base
        # @return [Object] Full qualified domain name.,Can not be changed as it is the unique identifier.
        attribute :fqdn
        validates :fqdn, presence: true

        # @return [String, nil] A description of this host.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Force host name even if not in DNS.
        attribute :force

        # @return [String, nil] Add the host to DNS with this IP address.
        attribute :ip_address
        validates :ip_address, type: String

        # @return [Array<String>, String, nil] List of Hardware MAC address(es) off this host.,If option is omitted MAC addresses will not be checked or changed.,If an empty list is passed all assigned MAC addresses will be removed.,MAC addresses that are already assigned but not passed will be removed.
        attribute :mac_address
        validates :mac_address, type: TypeGeneric.new(String)

        # @return [String, nil] Host location (e.g. "Lab 2")
        attribute :ns_host_location
        validates :ns_host_location, type: String

        # @return [String, nil] Host hardware platform (e.g. "Lenovo T61")
        attribute :ns_hardware_platform
        validates :ns_hardware_platform, type: String

        # @return [String, nil] Host operating system and version (e.g. "Fedora 9")
        attribute :ns_os_version
        validates :ns_os_version, type: String

        # @return [Array<NilClass>, NilClass, nil] List of Base-64 encoded server certificates.,If option is omitted certificates will not be checked or changed.,If an emtpy list is passed all assigned certificates will be removed.,Certificates already assigned but not passed will be removed.
        attribute :user_certificate
        validates :user_certificate, type: TypeGeneric.new(NilClass)

        # @return [:present, :absent, :disabled, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :disabled], :message=>"%{value} needs to be :present, :absent, :disabled"}, allow_nil: true

        # @return [Integer, nil] Port of IPA server
        attribute :ipa_port
        validates :ipa_port, type: Integer

        # @return [String, nil] IP or hostname of IPA server
        attribute :ipa_host
        validates :ipa_host, type: String

        # @return [String, nil] Administrative account used on IPA server
        attribute :ipa_user
        validates :ipa_user, type: String

        # @return [String] Password of administrative user
        attribute :ipa_pass
        validates :ipa_pass, presence: true, type: String

        # @return [:http, :https, nil] Protocol used by IPA server
        attribute :ipa_prot
        validates :ipa_prot, inclusion: {:in=>[:http, :https], :message=>"%{value} needs to be :http, :https"}, allow_nil: true

        # @return [Boolean, nil] This only applies if C(ipa_prot) is I(https).,If set to C(no), the SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
