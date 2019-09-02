# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure GslbApplicationPersistenceProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_gslbapplicationpersistenceprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Field introduced in 17.1.1.
        attribute :description

        # @return [String] A user-friendly name for the persistence profile.,Field introduced in 17.1.1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.1.1.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the persistence profile.,Field introduced in 17.1.1.
        attribute :uuid
      end
    end
  end
end
