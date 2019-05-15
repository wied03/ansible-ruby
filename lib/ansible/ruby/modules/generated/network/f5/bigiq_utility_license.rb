# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages utility licenses on a BIG-IQ. Utility licenses are one form of licenses that BIG-IQ can distribute. These licenses, unlike regkey licenses, do not require a pool to be created before creation. Additionally, when assigning them, you assign by offering instead of key.
      class Bigiq_utility_license < Base
        # @return [String] The license key to install and activate.
        attribute :license_key
        validates :license_key, presence: true, type: String

        # @return [Boolean, nil] A key that signifies that you accept the F5 EULA for this license.,A copy of the EULA can be found here https://askf5.f5.com/csp/article/K12902,This is required when C(state) is C(present).
        attribute :accept_eula
        validates :accept_eula, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:absent, :present, nil] The state of the utility license on the system.,When C(present), guarantees that the license exists.,When C(absent), removes the license from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
