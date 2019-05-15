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

        # @return [Integer, nil] Date at which the user password will expire,In the format YYYYMMddHHmmss,e.g. 20180121182022 will expire on 21 January 2018 at 18:20:22
        attribute :krbpasswordexpiration
        validates :krbpasswordexpiration, type: Integer

        # @return [Object, nil] Login shell
        attribute :loginshell

        # @return [Array<String>, String, nil] List of mail addresses assigned to the user.,If an empty list is passed all assigned email addresses will be deleted.,If None is passed email addresses will not be checked or changed.
        attribute :mail
        validates :mail, type: TypeGeneric.new(String)

        # @return [Object, nil] Password for new user
        attribute :password

        # @return [String, nil] Surname
        attribute :sn
        validates :sn, type: String

        # @return [Array<String>, String, nil] List of public SSH key.,If an empty list is passed all assigned public keys will be deleted.,If None is passed SSH public keys will not be checked or changed.
        attribute :sshpubkey
        validates :sshpubkey, type: TypeGeneric.new(String)

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

        # @return [Integer, nil] Account Settings UID/Posix User ID number
        attribute :uidnumber
        validates :uidnumber, type: Integer

        # @return [Integer, nil] Posix Group ID
        attribute :gidnumber
        validates :gidnumber, type: Integer
      end
    end
  end
end
