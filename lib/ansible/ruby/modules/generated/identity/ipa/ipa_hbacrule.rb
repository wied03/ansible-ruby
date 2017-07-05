# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or delete an IPA HBAC rule using IPA API.
      class Ipa_hbacrule < Base
        # @return [Object] Canonical name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [String, nil] Description
        attribute :description
        validates :description, type: String

        # @return [Object, nil] List of host names to assign.,If an empty list is passed all hosts will be removed from the rule.,If option is omitted hosts will not be checked or changed.
        attribute :host

        # @return [:all, nil] Host category
        attribute :hostcategory
        validates :hostcategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Array<String>, String, nil] List of hostgroup names to assign.,If an empty list is passed all hostgroups will be removed. from the rule,If option is omitted hostgroups will not be checked or changed.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [Object, nil] List of service names to assign.,If an empty list is passed all services will be removed from the rule.,If option is omitted services will not be checked or changed.
        attribute :service

        # @return [:all, nil] Service category
        attribute :servicecategory
        validates :servicecategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Object, nil] List of service group names to assign.,If an empty list is passed all assigned service groups will be removed from the rule.,If option is omitted service groups will not be checked or changed.
        attribute :servicegroup

        # @return [Object, nil] List of source host names to assign.,If an empty list if passed all assigned source hosts will be removed from the rule.,If option is omitted source hosts will not be checked or changed.
        attribute :sourcehost

        # @return [:all, nil] Source host category
        attribute :sourcehostcategory
        validates :sourcehostcategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Object, nil] List of source host group names to assign.,If an empty list if passed all assigned source host groups will be removed from the rule.,If option is omitted source host groups will not be checked or changed.
        attribute :sourcehostgroup

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] List of user names to assign.,If an empty list if passed all assigned users will be removed from the rule.,If option is omitted users will not be checked or changed.
        attribute :user

        # @return [:all, nil] User category
        attribute :usercategory
        validates :usercategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Array<String>, String, nil] List of user group names to assign.,If an empty list if passed all assigned user groups will be removed from the rule.,If option is omitted user groups will not be checked or changed.
        attribute :usergroup
        validates :usergroup, type: TypeGeneric.new(String)

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