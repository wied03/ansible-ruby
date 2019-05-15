# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, updates, or deletes Amazon Inspector Assessment Targets and manages the required Resource Groups.
      class Aws_inspector_target < Base
        # @return [String] The user-defined name that identifies the assessment target.  The name must be unique within the AWS account.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] The state of the assessment target.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Hash, nil] Tags of the EC2 instances to be added to the assessment target.,Required if C(state=present).
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
