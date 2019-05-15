# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage license installation and activation on a BIG-IP.
      class Bigip_device_license < Base
        # @return [String, nil] The registration key to use to license the BIG-IP.,This parameter is required if the C(state) is equal to C(present).,This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.
        attribute :license_key
        validates :license_key, type: String

        # @return [String, nil] The F5 license server to use when getting a license and validating a dossier.,This parameter is required if the C(state) is equal to C(present).,This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.
        attribute :license_server
        validates :license_server, type: String

        # @return [:absent, :present, nil] The state of the license on the system.,When C(present), only guarantees that a license is there.,When C(latest), ensures that the license is always valid.,When C(absent), removes the license on the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Declares whether you accept the BIG-IP EULA or not. By default, this value is C(no). You must specifically declare that you have viewed and accepted the license. This module will not present you with that EULA though, so it is incumbent on you to read it.,The EULA can be found here; https://support.f5.com/csp/article/K12902.,This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.
        attribute :accept_eula
      end
    end
  end
end
