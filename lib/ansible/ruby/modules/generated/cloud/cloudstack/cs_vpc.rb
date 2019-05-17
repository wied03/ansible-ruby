# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete VPCs.
      class Cs_vpc < Base
        # @return [String] Name of the VPC.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Display text of the VPC.,If not set, C(name) will be used for creating.
        attribute :display_text
        validates :display_text, type: String

        # @return [String, nil] CIDR of the VPC, e.g. 10.1.0.0/16,All VPC guest networks' CIDRs must be within this CIDR.,Required on I(state=present).
        attribute :cidr
        validates :cidr, type: String

        # @return [Object, nil] Network domain for the VPC.,All networks inside the VPC will belong to this domain.,Only considered while creating the VPC, can not be changed.
        attribute :network_domain

        # @return [Object, nil] Name of the VPC offering.,If not set, default VPC offering is used.
        attribute :vpc_offering

        # @return [Symbol, nil] Whether to redeploy a VPC router or not when I(state=restarted)
        attribute :clean_up
        validates :clean_up, type: Symbol

        # @return [:present, :absent, :stopped, :restarted, nil] State of the VPC.,The state C(present) creates a started VPC.,The state C(stopped) is only considered while creating the VPC, added in version 2.6.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :stopped, :restarted], :message=>"%{value} needs to be :present, :absent, :stopped, :restarted"}, allow_nil: true

        # @return [Object, nil] Domain the VPC is related to.
        attribute :domain

        # @return [Object, nil] Account the VPC is related to.
        attribute :account

        # @return [Object, nil] Name of the project the VPC is related to.
        attribute :project

        # @return [Object, nil] Name of the zone.,If not set, default zone is used.
        attribute :zone

        # @return [Object, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,For deleting all tags, set an empty list e.g. I(tags: []).
        attribute :tags

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
