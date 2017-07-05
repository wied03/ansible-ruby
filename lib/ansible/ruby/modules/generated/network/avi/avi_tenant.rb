# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Tenant object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_tenant < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Hash, nil] Tenantconfiguration settings for tenant.
        attribute :config_settings
        validates :config_settings, type: Hash

        # @return [Object, nil] Creator of this tenant.
        attribute :created_by

        # @return [Array<String>, String, nil] User defined description for the object.
        attribute :description
        validates :description, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Boolean flag to set local.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :local
        validates :local, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
