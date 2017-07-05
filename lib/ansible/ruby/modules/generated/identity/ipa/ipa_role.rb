# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete a role within FreeIPA server using FreeIPA API
      class Ipa_role < Base
        # @return [Object] Role name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [String, nil] A description of this role-group.
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] List of group names assign to this role.,If an empty list is passed all assigned groups will be unassigned from the role.,If option is omitted groups will not be checked or changed.,If option is passed all assigned groups that are not passed will be unassigned from the role.
        attribute :group
        validates :group, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host names to assign.,If an empty list is passed all assigned hosts will be unassigned from the role.,If option is omitted hosts will not be checked or changed.,If option is passed all assigned hosts that are not passed will be unassigned from the role.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host group names to assign.,If an empty list is passed all assigned host groups will be removed from the role.,If option is omitted host groups will not be checked or changed.,If option is passed all assigned hostgroups that are not passed will be unassigned from the role.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of service names to assign.,If an empty list is passed all assigned services will be removed from the role.,If option is omitted services will not be checked or changed.,If option is passed all assigned services that are not passed will be removed from the role.
        attribute :service
        validates :service, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] List of user names to assign.,If an empty list is passed all assigned users will be removed from the role.,If option is omitted users will not be checked or changed.
        attribute :user
        validates :user, type: TypeGeneric.new(String)

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
