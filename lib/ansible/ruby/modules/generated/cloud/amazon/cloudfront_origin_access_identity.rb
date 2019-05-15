# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for easy creation, updating and deletion of origin access identities.
      class Cloudfront_origin_access_identity < Base
        # @return [:present, :absent, nil] If the named resource should exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The origin_access_identity_id of the cloudfront distribution.
        attribute :origin_access_identity_id
        validates :origin_access_identity_id, type: String

        # @return [String, nil] A comment to describe the cloudfront origin access identity.
        attribute :comment
        validates :comment, type: String

        # @return [String, nil] A unique identifier to reference the origin access identity by.
        attribute :caller_reference
        validates :caller_reference, type: String
      end
    end
  end
end
