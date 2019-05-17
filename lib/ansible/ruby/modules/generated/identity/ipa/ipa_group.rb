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

        # @return [Object, nil] Description of the group.
        attribute :description

        # @return [Symbol, nil] Allow adding external non-IPA members from trusted domains.
        attribute :external
        validates :external, type: Symbol

        # @return [Integer, nil] GID (use this option to set it manually).
        attribute :gidnumber
        validates :gidnumber, type: Integer

        # @return [Array<String>, String, nil] List of group names assigned to this group.,If an empty list is passed all groups will be removed from this group.,If option is omitted assigned groups will not be checked or changed.,Groups that are already assigned but not passed will be removed.
        attribute :group
        validates :group, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Create as a non-POSIX group.
        attribute :nonposix
        validates :nonposix, type: Symbol

        # @return [Array<String>, String, nil] List of user names assigned to this group.,If an empty list is passed all users will be removed from this group.,If option is omitted assigned users will not be checked or changed.,Users that are already assigned but not passed will be removed.
        attribute :user
        validates :user, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
