# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove domains.
      class Cs_domain < Base
        # @return [String] Path of the domain.,Prefix C(ROOT/) or C(/ROOT/) in path is optional.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Network domain for networks in the domain.
        attribute :network_domain
        validates :network_domain, type: String

        # @return [Boolean, nil] Clean up all domain resources like child domains and accounts.,Considered on C(state=absent).
        attribute :clean_up
        validates :clean_up, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the domain.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
