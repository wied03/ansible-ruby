# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure NetworkProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_networkprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [String] The name of the network profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Hash] Networkprofileunion settings for networkprofile.
        attribute :profile
        validates :profile, presence: true, type: Hash

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the network profile.
        attribute :uuid
      end
    end
  end
end
