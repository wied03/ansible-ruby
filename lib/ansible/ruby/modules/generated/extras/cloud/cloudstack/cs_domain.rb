# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_domain < Base
        # @return [Object] Path of the domain.,Prefix C(ROOT/) or C(/ROOT/) in path is optional.
        attribute :path
        validates :path, presence: true

        # @return [Object, nil] Network domain for networks in the domain.
        attribute :network_domain

        # @return [Boolean, nil] Clean up all domain resources like child domains and accounts.,Considered on C(state=absent).
        attribute :clean_up
        validates :clean_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the domain.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end