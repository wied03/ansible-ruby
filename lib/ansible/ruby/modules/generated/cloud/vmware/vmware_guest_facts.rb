# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about a single VM on a VMware ESX cluster
      class Vmware_guest_facts < Base
        # @return [Object] Name of the VM to work with
        attribute :name
        validates :name, presence: true

        # @return [:first, :last, nil] If multiple VMs matching the name, use the first or last found
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required if name is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [Object, nil] Destination folder, absolute path to find an existing guest.,This is required if name is supplied.
        attribute :folder

        # @return [Object] Destination datacenter for the deploy operation
        attribute :datacenter
        validates :datacenter, presence: true
      end
    end
  end
end
