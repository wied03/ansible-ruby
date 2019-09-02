# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Defines an Instance Template resource that provides configuration settings for your virtual machine instances. Instance templates are not tied to the lifetime of an instance and can be used and reused as to deploy virtual machines. You can also use different templates to create different virtual machine configurations. Instance templates are required when you create a managed instance group.
      # Tip: Disks should be set to autoDelete=true so that leftover disks are not left behind on machine deletion.
      class Gcp_compute_instance_template < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [String] Name of the resource. The name is 1-63 characters long and complies with RFC1035.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Hash, nil] The instance properties for this instance template.
        attribute :properties
        validates :properties, type: Hash
      end
    end
  end
end
