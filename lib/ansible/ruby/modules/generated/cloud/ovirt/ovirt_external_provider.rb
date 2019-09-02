# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage external providers in oVirt/RHV
      class Ovirt_external_provider < Base
        # @return [String, nil] Name of the external provider to manage.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, nil] Should the external be present or absent,When you are using absent for I(os_volume), you need to make sure that SD is not attached to the data center!
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Description of the external provider.
        attribute :description

        # @return [:os_image, :network, :os_volume, :foreman, nil] Type of the external provider.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:os_image, :network, :os_volume, :foreman], :message=>"%{value} needs to be :os_image, :network, :os_volume, :foreman"}, allow_nil: true

        # @return [String, nil] URL where external provider is hosted.,Applicable for those types: I(os_image), I(os_volume), I(network) and I(foreman).
        attribute :url
        validates :url, type: String

        # @return [String, nil] Username to be used for login to external provider.,Applicable for all types.
        attribute :username
        validates :username, type: String

        # @return [Integer, nil] Password of the user specified in C(username) parameter.,Applicable for all types.
        attribute :password
        validates :password, type: Integer

        # @return [Object, nil] Name of the tenant.,Applicable for those types: I(os_image), I(os_volume) and I(network).
        attribute :tenant_name

        # @return [Object, nil] Keystone authentication URL of the openstack provider.,Applicable for those types: I(os_image), I(os_volume) and I(network).
        attribute :authentication_url

        # @return [Object, nil] Name of the data center where provider should be attached.,Applicable for those type: I(os_volume).
        attribute :data_center

        # @return [Object, nil] Specify if the network should be read only.,Applicable if C(type) is I(network).
        attribute :read_only

        # @return [:external, :neutron, nil] Type of the external network provider either external (for example OVN) or neutron.,Applicable if C(type) is I(network).
        attribute :network_type
        validates :network_type, expression_inclusion: {:in=>[:external, :neutron], :message=>"%{value} needs to be :external, :neutron"}, allow_nil: true

        # @return [Object, nil] List of authentication keys. Each key is represented by dict like {'uuid': 'our-uuid', 'value': 'YourSecretValue=='},When you will not pass these keys and there are already some of them defined in the system they will be removed.,Applicable for I(os_volume).
        attribute :authentication_keys
      end
    end
  end
end
