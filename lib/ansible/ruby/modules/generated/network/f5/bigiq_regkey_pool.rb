# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages registration key (regkey) pools on a BIG-IQ. These pools function as a container in-which you will add lists of registration keys. To add registration keys, use the C(bigiq_regkey_license) module.
      class Bigiq_regkey_pool < Base
        # @return [String] Specifies the name of the registration key pool.,You must be mindful to name your registration pools unique names. While BIG-IQ does not require this, this module does. If you do not do this, the behavior of the module is undefined and you may end up putting licenses in the wrong registration key pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A description to attach to the pool.
        attribute :description

        # @return [:absent, :present, nil] The state of the regkey pool on the system.,When C(present), guarantees that the pool exists.,When C(absent), removes the pool, and the licenses it contains, from the system.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
