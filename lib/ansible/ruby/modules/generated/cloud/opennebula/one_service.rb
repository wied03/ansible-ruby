# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenNebula services
      class One_service < Base
        # @return [Object, nil] URL of the OpenNebula OneFlow API server.,It is recommended to use HTTPS so that the username/password are not transferred over the network unencrypted.,If not set then the value of the ONEFLOW_URL environment variable is used.
        attribute :api_url

        # @return [Object, nil] Name of the user to login into the OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_USERNAME) environment variable is used.
        attribute :api_username

        # @return [Object, nil] Password of the user to login into OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_PASSWORD) environment variable is used.
        attribute :api_password

        # @return [String, nil] Name of service template to use to create a new instace of a service
        attribute :template_name
        validates :template_name, type: String

        # @return [Integer, nil] ID of a service template to use to create a new instance of a service
        attribute :template_id
        validates :template_id, type: Integer

        # @return [Integer, nil] ID of a service instance that you would like to manage
        attribute :service_id
        validates :service_id, type: Integer

        # @return [String, nil] Name of a service instance that you would like to manage
        attribute :service_name
        validates :service_name, type: String

        # @return [Boolean, nil] Setting C(unique=yes) will make sure that there is only one service instance running with a name set with C(service_name) when,instantiating a service from a template specified with C(template_id)/C(template_name). Check examples below.
        attribute :unique
        validates :unique, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] C(present) - instantiate a service from a template specified with C(template_id)/C(template_name).,C(absent) - terminate an instance of a service specified with C(service_id)/C(service_name).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Set permission mode of a service instance in octet format, e.g. C(600) to give owner C(use) and C(manage) and nothing to group and others.
        attribute :mode
        validates :mode, type: String

        # @return [Integer, nil] ID of the user which will be set as the owner of the service
        attribute :owner_id
        validates :owner_id, type: Integer

        # @return [Integer, nil] ID of the group which will be set as the group of the service
        attribute :group_id
        validates :group_id, type: Integer

        # @return [Boolean, nil] Wait for the instance to reach RUNNING state after DEPLOYING or COOLDOWN state after SCALING
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Object, nil] Dictionary of key/value custom attributes which will be used when instantiating a new service.
        attribute :custom_attrs

        # @return [String, nil] Name of the role whose cardinality should be changed
        attribute :role
        validates :role, type: String

        # @return [Integer, nil] Number of VMs for the specified role
        attribute :cardinality
        validates :cardinality, type: Integer

        # @return [Boolean, nil] Force the new cardinality even if it is outside the limits
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
