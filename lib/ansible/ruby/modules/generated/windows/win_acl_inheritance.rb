# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Change ACL (Access Control List) inheritance and optionally copy inherited ACE's (Access Control Entry) to dedicated ACE's or vice versa.
      class Win_acl_inheritance < Base
        # @return [String] Path to be used for changing inheritance
        attribute :path
        validates :path, presence: true, type: String

        # @return [:absent, :present, nil] Specify whether to enable I(present) or disable I(absent) ACL inheritance
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] For P(state) = I(absent), indicates if the inherited ACE's should be copied from the parent directory. This is necessary (in combination with removal) for a simple ACL instead of using multiple ACE deny entries.,For P(state) = I(present), indicates if the inherited ACE's should be deduplicated compared to the parent directory. This removes complexity of the ACL structure.
        attribute :reorganize
        validates :reorganize, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
