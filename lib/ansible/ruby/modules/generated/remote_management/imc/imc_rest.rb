# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides direct access to the Cisco IMC REST API.
      # Perform any configuration changes and actions that the Cisco IMC supports.
      # More information about the IMC REST API is available from U(http://www.cisco.com/c/en/us/td/docs/unified_computing/ucs/c/sw/api/3_0/b_Cisco_IMC_api_301.html)
      class Imc_rest < Base
        # @return [String] IP Address or hostname of Cisco IMC, resolvable by Ansible control host.
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [String, nil] Username used to login to the switch.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password to use for authentication.
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Name of the absolute path of the filename that includes the body of the http request being sent to the Cisco IMC REST API.,Parameter C(path) is mutual exclusive with parameter C(content).
        attribute :path

        # @return [String, nil] When used instead of C(path), sets the content of the API requests directly.,This may be convenient to template simple requests, for anything complex use the M(template) module.,You can collate multiple IMC XML fragments and they will be processed sequentially in a single stream, the Cisco IMC output is subsequently merged.,Parameter C(content) is mutual exclusive with parameter C(path).
        attribute :content
        validates :content, type: String

        # @return [:http, :https, nil] Connection protocol to use.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:http, :https], :message=>"%{value} needs to be :http, :https"}, allow_nil: true

        # @return [Integer, nil] The socket level timeout in seconds.,This is the time that every single connection (every fragment) can spend. If this C(timeout) is reached, the module will fail with a C(Connection failure) indicating that C(The read operation timed out).
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] If C(no), SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
