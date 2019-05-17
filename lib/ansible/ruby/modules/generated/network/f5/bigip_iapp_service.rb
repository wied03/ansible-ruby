# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages TCL iApp services on a BIG-IP.
      # If you are looking for the API that is communicated with on the BIG-IP, the one the is used is C(/mgmt/tm/sys/application/service/).
      class Bigip_iapp_service < Base
        # @return [String] The name of the iApp service that you want to deploy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The iApp template from which to instantiate a new service. This template must exist on your BIG-IP before you can successfully create a service.,When creating a new service, this parameter is required.
        attribute :template
        validates :template, type: String

        # @return [String, Hash, nil] A hash of all the required template variables for the iApp template. If your parameters are stored in a file (the more common scenario) it is recommended you use either the C(file) or C(template) lookups to supply the expected parameters.,These parameters typically consist of the C(lists), C(tables), and C(variables) fields.
        attribute :parameters
        validates :parameters, type: MultipleTypes.new(String, Hash)

        # @return [Symbol, nil] Forces the updating of an iApp service even if the parameters to the service have not changed. This option is of particular importance if the iApp template that underlies the service has been updated in-place. This option is equivalent to re-configuring the iApp if that template has changed.
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] When C(present), ensures that the iApp service is created and running. When C(absent), ensures that the iApp service has been removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Boolean, nil] Indicates whether the application service is tied to the template, so when the template is updated, the application service changes to reflect the updates.,When C(yes), disallows any updates to the resources that the iApp service has created, if they are not updated directly through the iApp.,When C(no), allows updates outside of the iApp.,If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.
        attribute :strict_updates
        validates :strict_updates, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The traffic group for the iApp service. When creating a new service, if this value is not specified, the default of C(/Common/traffic-group-1) will be used.,If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.
        attribute :traffic_group

        # @return [Array<Hash>, Hash, nil] Metadata associated with the iApp service.,If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.
        attribute :metadata
        validates :metadata, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Description of the iApp service.,If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.
        attribute :description

        # @return [Object, nil] The device group for the iApp service.,If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.
        attribute :device_group
      end
    end
  end
end
