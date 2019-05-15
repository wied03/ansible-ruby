# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Delete objects and containers from OpenStack
      class Os_object < Base
        # @return [String] The name of the container in which to create the object
        attribute :container
        validates :container, presence: true, type: String

        # @return [String, nil] Name to be give to the object. If omitted, operations will be on the entire container
        attribute :name
        validates :name, type: String

        # @return [String, nil] Path to local file to be uploaded.
        attribute :filename
        validates :filename, type: String

        # @return [:private, :public, nil] desired container access level.
        attribute :container_access
        validates :container_access, inclusion: {:in=>[:private, :public], :message=>"%{value} needs to be :private, :public"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
