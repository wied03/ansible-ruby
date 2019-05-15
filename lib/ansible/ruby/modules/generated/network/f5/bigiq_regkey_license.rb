# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages licenses in a BIG-IQ registration key pool.
      class Bigiq_regkey_license < Base
        # @return [String] The registration key pool that you want to place the license in.,You must be mindful to name your registration pools unique names. While BIG-IQ does not require this, this module does. If you do not do this, the behavior of the module is undefined and you may end up putting licenses in the wrong registration key pool.
        attribute :regkey_pool
        validates :regkey_pool, presence: true, type: String

        # @return [String] The license key to put in the pool.
        attribute :license_key
        validates :license_key, presence: true, type: String

        # @return [Object, nil] Description of the license.
        attribute :description

        # @return [Boolean, nil] A key that signifies that you accept the F5 EULA for this license.,A copy of the EULA can be found here https://askf5.f5.com/csp/article/K12902,This is required when C(state) is C(present).
        attribute :accept_eula
        validates :accept_eula, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:absent, :present, nil] The state of the regkey license in the pool on the system.,When C(present), guarantees that the license exists in the pool.,When C(absent), removes the license from the pool.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
