# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, attach, detach volumes.
      class Cs_volume < Base
        # @return [String] Name of the volume.,C(name) can only contain ASCII letters.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Account the volume is related to.
        attribute :account

        # @return [Object, nil] Custom id to the resource.,Allowed to Root Admins only.
        attribute :custom_id

        # @return [String, nil] Name of the disk offering to be used.,Required one of C(disk_offering), C(snapshot) if volume is not already C(state=present).
        attribute :disk_offering
        validates :disk_offering, type: String

        # @return [Boolean, nil] Whether to display the volume to the end user or not.,Allowed to Root Admins only.
        attribute :display_volume
        validates :display_volume, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Name of the domain the volume to be deployed in.
        attribute :domain

        # @return [Object, nil] Max iops
        attribute :max_iops

        # @return [Object, nil] Min iops
        attribute :min_iops

        # @return [String, nil] Name of the project the volume to be deployed in.
        attribute :project
        validates :project, type: String

        # @return [Integer, nil] Size of disk in GB
        attribute :size
        validates :size, type: Integer

        # @return [Object, nil] The snapshot name for the disk volume.,Required one of C(disk_offering), C(snapshot) if volume is not already C(state=present).
        attribute :snapshot

        # @return [Boolean, nil] Force removal of volume even it is attached to a VM.,Considered on C(state=absnet) only.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to allow to shrink the volume.
        attribute :shrink_ok
        validates :shrink_ok, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Name of the virtual machine to attach the volume to.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Name of the zone in which the volume should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [:present, :absent, :attached, :detached, nil] State of the volume.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :attached, :detached], :message=>"%{value} needs to be :present, :absent, :attached, :detached"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
