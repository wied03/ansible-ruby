# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, Update or Remove metadata in compute instances from OpenStack.
      class Os_server_metadata < Base
        # @return [Object] Name of the instance to update the metadata
        attribute :server
        validates :server, presence: true

        # @return [Object] A list of key value pairs that should be provided as a metadata to the instance or a string containing a list of key-value pairs. Eg:  meta: "key1=value1,key2=value2"
        attribute :meta
        validates :meta, presence: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Availability zone in which to create the snapshot.
        attribute :availability_zone
      end
    end
  end
end
