# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages software images on a BIG-IP. These images may include both base images and hotfix images.
      class Bigip_software_image < Base
        # @return [Symbol, nil] When C(yes), will upload the file every time and replace the file on the device.,When C(no), the file will only be uploaded if it does not already exist.,Generally should be C(yes) only in cases where you have reason to believe that the image was corrupted during upload.
        attribute :force
        validates :force, type: Symbol

        # @return [:absent, :present, nil] When C(present), ensures that the image is uploaded.,When C(absent), ensures that the image is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The image to put on the remote device.,This may be an absolute or relative location on the Ansible controller.,Image names, whether they are base ISOs or hotfix ISOs, B(must) be unique.
        attribute :image
        validates :image, type: String
      end
    end
  end
end
