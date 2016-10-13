# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Register and remove ISO images.
      class Cs_iso < Base
        # @return [String] Name of the ISO.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] URL where the ISO can be downloaded from. Required if C(state) is present.
        attribute :url
        validates :url, type: String

        # @return [String, nil] Name of the OS that best represents the OS of this ISO. If the iso is bootable this parameter needs to be passed. Required if C(state) is present.
        attribute :os_type
        validates :os_type, type: String

        # @return [Boolean, nil] This flag is used for searching existing ISOs. If set to C(true), it will only list ISO ready for deployment e.g. successfully downloaded and installed. Recommended to set it to C(false).
        attribute :is_ready
        validates :is_ready, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Register the ISO to be publicly available to all users. Only used if C(state) is present.
        attribute :is_public
        validates :is_public, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Register the ISO to be featured. Only used if C(state) is present.
        attribute :is_featured
        validates :is_featured, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Register the ISO having XS/VMWare tools installed inorder to support dynamic scaling of VM cpu/memory. Only used if C(state) is present.
        attribute :is_dynamically_scalable
        validates :is_dynamically_scalable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] The MD5 checksum value of this ISO. If set, we search by checksum instead of name.
        attribute :checksum
        validates :checksum, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Register the ISO to be bootable. Only used if C(state) is present.
        attribute :bootable
        validates :bootable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Domain the ISO is related to.
        attribute :domain

        # @return [Object, nil] Account the ISO is related to.
        attribute :account

        # @return [Object, nil] Name of the project the ISO to be registered in.
        attribute :project

        # @return [Object, nil] Name of the zone you wish the ISO to be registered or deleted from. If not specified, first zone found will be used.
        attribute :zone

        # @return [:featured, :self, :selfexecutable, :sharedexecutable, :executable, :community, nil] Name of the filter used to search for the ISO.
        attribute :iso_filter
        validates :iso_filter, inclusion: {:in=>[:featured, :self, :selfexecutable, :sharedexecutable, :executable, :community], :message=>"%{value} needs to be :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community"}, allow_nil: true

        # @return [:present, :absent, nil] State of the ISO.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
