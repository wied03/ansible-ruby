# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides an interface to manage Logical Interconnect Group resources. Can create, update, or delete.
      class Oneview_logical_interconnect_group < Base
        # @return [:absent, :present, nil] Indicates the desired state for the Logical Interconnect Group resource. C(absent) will remove the resource from OneView, if it exists. C(present) will ensure data properties are compliant with OneView.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Hash] List with the Logical Interconnect Group properties.
        attribute :data
        validates :data, presence: true, type: Hash
      end
    end
  end
end
