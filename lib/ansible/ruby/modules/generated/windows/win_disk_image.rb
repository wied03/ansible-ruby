# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages mount behavior for a specified ISO, VHD, or VHDX image on a Windows host. When C(state) is C(present), the image will be mounted under a system-assigned drive letter, which will be returned in the C(mount_path) value of the module result. Requires Windows 8+ or Windows Server 2012+.
      class Win_disk_image < Base
        # @return [String] Path to an ISO, VHD, or VHDX image on the target Windows host (the file cannot reside on a network share)
        attribute :image_path
        validates :image_path, presence: true, type: String

        # @return [:absent, :present, nil] Whether the image should be present as a drive-letter mount or not.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
