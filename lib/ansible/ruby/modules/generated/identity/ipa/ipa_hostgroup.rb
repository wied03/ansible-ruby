# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete an IPA host-group using IPA API
      class Ipa_hostgroup < Base
        # @return [Object] Name of host-group.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [Object, nil] Description
        attribute :description

        # @return [Array<String>, String, nil] List of hosts that belong to the host-group.,If an empty list is passed all hosts will be removed from the group.,If option is omitted hosts will not be checked or changed.,If option is passed all assigned hosts that are not passed will be unassigned from the group.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host-groups than belong to that host-group.,If an empty list is passed all host-groups will be removed from the group.,If option is omitted host-groups will not be checked or changed.,If option is passed all assigned hostgroups that are not passed will be unassigned from the group.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State to ensure.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

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
