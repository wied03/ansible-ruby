# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to perform various operations related to backup, restore and reset of ESXi host configuration.
      class Vmware_cfg_backup < Base
        # @return [String, nil] Name of ESXi server. This is required only if authentication against a vCenter is done.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [String, nil] The destination where the ESXi configuration bundle will be saved. The I(dest) can be a folder or a file.,If I(dest) is a folder, the backup file will be saved in the folder with the default filename generated from the ESXi server.,If I(dest) is a file, the backup file will be saved with that filename. The file extension will always be .tgz.
        attribute :dest
        validates :dest, type: String

        # @return [Object, nil] The file containing the ESXi configuration that will be restored.
        attribute :src

        # @return [:saved, :absent, :loaded, nil] If C(saved), the .tgz backup bundle will be saved in I(dest).,If C(absent), the host configuration will be reset to default values.,If C(loaded), the backup file in I(src) will be loaded to the ESXi host rewriting the hosts settings.
        attribute :state
        validates :state, inclusion: {:in=>[:saved, :absent, :loaded], :message=>"%{value} needs to be :saved, :absent, :loaded"}, allow_nil: true
      end
    end
  end
end
