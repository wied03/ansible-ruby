# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module uncoditionally saves the configuration on the target netscaler node.
      # This module does not support check mode.
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance.
      class Netscaler_save_config < Base
        # @return [String] The ip address of the netscaler appliance where the nitro API calls will be made.,The port can be specified with the colon (:). E.g. C(192.168.1.1:555).
        attribute :nsip
        validates :nsip, presence: true, type: String

        # @return [String] The username with which to authenticate to the netscaler node.
        attribute :nitro_user
        validates :nitro_user, presence: true, type: String

        # @return [String] The password with which to authenticate to the netscaler node.
        attribute :nitro_pass
        validates :nitro_pass, presence: true, type: String

        # @return [:http, :https, nil] Which protocol to use when accessing the nitro API objects.
        attribute :nitro_protocol
        validates :nitro_protocol, expression_inclusion: {:in=>[:http, :https], :message=>"%{value} needs to be :http, :https"}, allow_nil: true

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [Integer, nil] Time in seconds until a timeout error is thrown when establishing a new session with Netscaler.
        attribute :nitro_timeout
        validates :nitro_timeout, type: Integer
      end
    end
  end
end
