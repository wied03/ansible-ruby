# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete or activate ZFS boot environments.
      # Mount and unmount ZFS boot environments.
      class Beadm < Base
        # @return [String] ZFS boot environment name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] If specified, the new boot environment will be cloned from the given snapshot or inactive boot environment.
        attribute :snapshot
        validates :snapshot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Associate a description with a new boot environment. This option is available only on Solarish platforms.
        attribute :description
        validates :description, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Create the datasets for new BE with specific ZFS properties. Multiple options can be specified. This option is available only on Solarish platforms.
        attribute :options
        validates :options, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Path where to mount the ZFS boot environment
        attribute :mountpoint
        validates :mountpoint, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :activated, :mounted, :unmounted, nil] Create or delete ZFS boot environment.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :activated, :mounted, :unmounted], :message=>"%{value} needs to be :present, :absent, :activated, :mounted, :unmounted"}, allow_nil: true

        # @return [Boolean, nil] Specifies if the unmount should be forced.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
