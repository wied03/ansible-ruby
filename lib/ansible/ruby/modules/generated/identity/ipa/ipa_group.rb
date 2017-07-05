# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete group within IPA server
      class Ipa_group < Base
        # @return [Object] Canonical name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [Object, nil] Allow adding external non-IPA members from trusted domains.
        attribute :external

        # @return [Integer, nil] GID (use this option to set it manually).
        attribute :gidnumber
        validates :gidnumber, type: Integer

        # @return [Array<String>, String, nil] List of group names assigned to this group.,If an empty list is passed all groups will be removed from this group.,If option is omitted assigned groups will not be checked or changed.,Groups that are already assigned but not passed will be removed.
        attribute :group
        validates :group, type: TypeGeneric.new(String)

        # @return [Object, nil] Create as a non-POSIX group.
        attribute :nonposix

        # @return [Array<String>, String, nil] List of user names assigned to this group.,If an empty list is passed all users will be removed from this group.,If option is omitted assigned users will not be checked or changed.,Users that are already assigned but not passed will be removed.
        attribute :user
        validates :user, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State to ensure
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
