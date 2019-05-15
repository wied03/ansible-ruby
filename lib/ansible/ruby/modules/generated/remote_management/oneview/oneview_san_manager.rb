# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides an interface to manage SAN Manager resources. Can create, update, or delete.
      class Oneview_san_manager < Base
        # @return [:present, :absent, :connection_information_set, nil] Indicates the desired state for the Uplink Set resource. - C(present) ensures data properties are compliant with OneView. - C(absent) removes the resource from OneView, if it exists. - C(connection_information_set) updates the connection information for the SAN Manager. This operation is non-idempotent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :connection_information_set], :message=>"%{value} needs to be :present, :absent, :connection_information_set"}, allow_nil: true

        # @return [Hash] List with SAN Manager properties.
        attribute :data
        validates :data, presence: true, type: Hash
      end
    end
  end
end
