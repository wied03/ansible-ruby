# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Urpmi < Base
        # @return [Array<String>] name of package to install, upgrade or remove.
        attribute :pkg, flat_array: true
        validates :pkg, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] Indicates the desired package state
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] update the package database first C(urpmi.update -a).
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Corresponds to the C(--no-recommends) option for I(urpmi).
        attribute :no-recommends
        validates :no-recommends, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Assume "yes" is the answer to any question urpmi has to ask. Corresponds to the C(--force) option for I(urpmi).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
