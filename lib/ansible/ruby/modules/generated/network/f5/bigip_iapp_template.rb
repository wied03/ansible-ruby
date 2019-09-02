# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages TCL iApp templates on a BIG-IP. This module will allow you to deploy iApp templates to the BIG-IP and manage their lifecycle. The conventional way to use this module is to import new iApps as needed or by extracting the contents of the iApp archive that is provided at downloads.f5.com and then importing all the iApps with this module. This module can also update existing iApps provided that the source of the iApp changed while the name stayed the same. Note however that this module will not reconfigure any services that may have been created using the C(bigip_iapp_service) module. iApps are normally not updated in production. Instead, new versions are deployed and then existing services are changed to consume that new template. As such, the ability to update templates in-place requires the C(force) option to be used.
      class Bigip_iapp_template < Base
        # @return [Symbol, nil] Specifies whether or not to force the uploading of an iApp. When C(yes), will force update the iApp even if there are iApp services using it. This will not update the running service though. Use C(bigip_iapp_service) to do that. When C(no), will update the iApp only if there are no iApp services using the template.
        attribute :force
        validates :force, type: Symbol

        # @return [Object, nil] The name of the iApp template that you want to delete. This option is only available when specifying a C(state) of C(absent) and is provided as a way to delete templates that you may no longer have the source of.
        attribute :name

        # @return [String, nil] Sets the contents of an iApp template directly to the specified value. This is for simple values, but can be used with lookup plugins for anything complex or with formatting. C(content) must be provided when creating new templates.
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Whether the iApp template should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
