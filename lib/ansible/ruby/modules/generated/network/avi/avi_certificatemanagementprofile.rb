# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure CertificateManagementProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_certificatemanagementprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] Name of the pki profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] List of customparams.
        attribute :script_params

        # @return [Object] Script_path of certificatemanagementprofile.
        attribute :script_path
        validates :script_path, presence: true

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
