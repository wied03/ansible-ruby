# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete or modifiy hostgroups on Pure Storage FlashArrays.
      class Purefa_hg < Base
        # @return [String] The name of the hostgroup.
        attribute :hostgroup
        validates :hostgroup, presence: true, type: String

        # @return [:absent, :present, nil] Define whether the hostgroup should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Array<String>, String, nil] List of existing hosts to add to hostgroup.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of existing volumes to add to hostgroup.
        attribute :volume
        validates :volume, type: TypeGeneric.new(String)
      end
    end
  end
end
