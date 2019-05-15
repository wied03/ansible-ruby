# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage upload, installation and removal of UCS files.
      class Bigip_ucs < Base
        # @return [Object, nil] During restore of the UCS file, include chassis level configuration that is shared among boot volume sets. For example, cluster default configuration.
        attribute :include_chassis_level_config

        # @return [String, nil] The path to the UCS file to install. The parameter must be provided if the C(state) is either C(installed) or C(activated). When C(state) is C(absent), the full path for this parameter will be ignored and only the filename will be used to select a UCS for removal. Therefore you could specify C(/mickey/mouse/test.ucs) and this module would only look for C(test.ucs).
        attribute :ucs
        validates :ucs, type: String

        # @return [Boolean, nil] If C(yes) will upload the file every time and replace the file on the device. If C(no), the file will only be uploaded if it does not already exist. Generally should be C(yes) only in cases where you have reason to believe that the image was corrupted during upload.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Performs a full restore of the UCS file and all the files it contains, with the exception of the license file. The option must be used to restore a UCS on RMA devices (Returned Materials Authorization).
        attribute :no_license
        validates :no_license, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Bypasses the platform check and allows a UCS that was created using a different platform to be installed. By default (without this option), a UCS created from a different platform is not allowed to be installed.
        attribute :no_platform_check
        validates :no_platform_check, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specifies the passphrase that is necessary to load the specified UCS file.
        attribute :passphrase
        validates :passphrase, type: String

        # @return [Object, nil] When specified, the device and trust domain certs and keys are not loaded from the UCS. Instead, a new set is regenerated.
        attribute :reset_trust

        # @return [:absent, :installed, :present, nil] When C(installed), ensures that the UCS is uploaded and installed, on the system. When C(present), ensures that the UCS is uploaded. When C(absent), the UCS will be removed from the system. When C(installed), the uploading of the UCS is idempotent, however the installation of that configuration is not idempotent.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :installed, :present], :message=>"%{value} needs to be :absent, :installed, :present"}, allow_nil: true
      end
    end
  end
end
