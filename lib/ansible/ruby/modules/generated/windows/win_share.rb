# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or remove Windows share and set share permissions.
      class Win_share < Base
        # @return [String] Share name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Share directory.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:absent, :present, nil] Specify whether to add C(present) or remove C(absent) the specified share.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Share description.
        attribute :description
        validates :description, type: String

        # @return [:yes, :no, nil] Specify whether to allow or deny file listing, in case user has no permission on share. Also known as Access-Based Enumeration.
        attribute :list
        validates :list, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specify user list that should get read access on share, separated by comma.
        attribute :read
        validates :read, type: String

        # @return [Object, nil] Specify user list that should get read and write access on share, separated by comma.
        attribute :change

        # @return [Array<String>, String, nil] Specify user list that should get full access on share, separated by comma.
        attribute :full
        validates :full, type: TypeGeneric.new(String)

        # @return [String, nil] Specify user list that should get no access, regardless of implied access on share, separated by comma.
        attribute :deny
        validates :deny, type: String

        # @return [:BranchCache, :Documents, :Manual, :None, :Programs, :Unknown, nil] Set the CachingMode for this share.
        attribute :caching_mode
        validates :caching_mode, expression_inclusion: {:in=>[:BranchCache, :Documents, :Manual, :None, :Programs, :Unknown], :message=>"%{value} needs to be :BranchCache, :Documents, :Manual, :None, :Programs, :Unknown"}, allow_nil: true

        # @return [:yes, :no, nil] Sets whether to encrypt the traffic to the share or not.
        attribute :encrypt
        validates :encrypt, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
