# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage (create, delete) VMware vSphere Datacenters.
      class Vmware_datacenter < Base
        # @return [String] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [:present, :absent, nil] If the datacenter should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
