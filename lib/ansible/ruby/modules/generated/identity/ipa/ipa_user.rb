# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete user within IPA server
      class Ipa_user < Base
        # @return [Object, nil] Display name
        attribute :displayname

        # @return [String, nil] First name
        attribute :givenname
        validates :givenname, type: String

        # @return [Object, nil] Login shell
        attribute :loginshell

        # @return [Array<String>, String, nil] List of mail addresses assigned to the user.,If an empty list is passed all assigned email addresses will be deleted.,If None is passed email addresses will not be checked or changed.
        attribute :mail
        validates :mail, type: TypeGeneric.new(String)

        # @return [Object, nil] Password
        attribute :password

        # @return [String, nil] Surname
        attribute :sn
        validates :sn, type: String

        # @return [Object, nil] List of public SSH key.,If an empty list is passed all assigned public keys will be deleted.,If None is passed SSH public keys will not be checked or changed.
        attribute :sshpubkey

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [Array<Integer>, Integer, nil] List of telephone numbers assigned to the user.,If an empty list is passed all assigned telephone numbers will be deleted.,If None is passed telephone numbers will not be checked or changed.
        attribute :telephonenumber
        validates :telephonenumber, type: TypeGeneric.new(Integer)

        # @return [Object, nil] Title
        attribute :title

        # @return [Object] uid of the user
        attribute :uid
        validates :uid, presence: true

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
