# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Issue Nitro API requests to a Netscaler instance.
      # This is intended to be a short hand for using the uri Ansible module to issue the raw HTTP requests directly.
      # It provides consistent return values and has no other dependencies apart from the base Ansible runtime environment.
      # This module is intended to run either on the Ansible control node or a bastion (jumpserver) with access to the actual Netscaler instance
      class Netscaler_nitro_request < Base
        # @return [String, nil] The IP address of the Netscaler or MAS instance where the Nitro API calls will be made.,The port can be specified with the colon C(:). E.g. C(192.168.1.1:555).
        attribute :nsip
        validates :nsip, type: String

        # @return [String] The username with which to authenticate to the Netscaler node.
        attribute :nitro_user
        validates :nitro_user, presence: true, type: String

        # @return [String] The password with which to authenticate to the Netscaler node.
        attribute :nitro_pass
        validates :nitro_pass, presence: true, type: String

        # @return [:http, :https, nil] Which protocol to use when accessing the Nitro API objects.
        attribute :nitro_protocol
        validates :nitro_protocol, inclusion: {:in=>[:http, :https], :message=>"%{value} needs to be :http, :https"}, allow_nil: true

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [String, nil] The authentication token provided by the C(mas_login) operation. It is required when issuing Nitro API calls through a MAS proxy.
        attribute :nitro_auth_token
        validates :nitro_auth_token, type: String

        # @return [String, nil] The type of resource we are operating on.,It is required for all I(operation) values except C(mas_login) and C(save_config).
        attribute :resource
        validates :resource, type: String

        # @return [String, nil] The name of the resource we are operating on.,It is required for the following I(operation) values: C(update), C(get), C(delete).
        attribute :name
        validates :name, type: String

        # @return [Hash, nil] The attributes of the Nitro object we are operating on.,It is required for the following I(operation) values: C(add), C(update), C(action).
        attribute :attributes
        validates :attributes, type: Hash

        # @return [Hash, nil] A dictionary which defines the key arguments by which we will select the Nitro object to operate on.,It is required for the following I(operation) values: C(get_by_args), C('delete_by_args').
        attribute :args
        validates :args, type: Hash

        # @return [Hash, nil] A dictionary which defines the filter with which to refine the Nitro objects returned by the C(get_filtered) I(operation).
        attribute :filter
        validates :filter, type: Hash

        # @return [:add, :update, :get, :get_by_args, :get_filtered, :get_all, :delete, :delete_by_args, :count, :mas_login, :save_config, :action, nil] Define the Nitro operation that we want to perform.
        attribute :operation
        validates :operation, inclusion: {:in=>[:add, :update, :get, :get_by_args, :get_filtered, :get_all, :delete, :delete_by_args, :count, :mas_login, :save_config, :action], :message=>"%{value} needs to be :add, :update, :get, :get_by_args, :get_filtered, :get_all, :delete, :delete_by_args, :count, :mas_login, :save_config, :action"}, allow_nil: true

        # @return [Integer] A list of numeric values that signify that the operation was successful.
        attribute :expected_nitro_errorcode
        validates :expected_nitro_errorcode, presence: true, type: Integer

        # @return [String, nil] The action to perform when the I(operation) value is set to C(action).,Some common values for this parameter are C(enable), C(disable), C(rename).
        attribute :action
        validates :action, type: String

        # @return [String, nil] The IP address of the target Netscaler instance when issuing a Nitro request through a MAS proxy.
        attribute :instance_ip
        validates :instance_ip, type: String

        # @return [Object, nil] The name of the target Netscaler instance when issuing a Nitro request through a MAS proxy.
        attribute :instance_name

        # @return [Object, nil] The id of the target Netscaler instance when issuing a Nitro request through a MAS proxy.
        attribute :instance_id
      end
    end
  end
end
