# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module authenticates to oVirt engine and creates SSO token, which should be later used in all other oVirt modules, so all modules don't need to perform login and logout. This module returns an Ansible fact called I(ovirt_auth). Every module can use this fact as C(auth) parameter, to perform authentication.
      class Ovirt_auth < Base
        # @return [:present, :absent, nil] Specifies if a token should be created or revoked.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the user. For example: I(admin@internal).
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password of the user.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] A string containing the base URL of the server. For example: I(https://server.example.com/ovirt-engine/api).
        attribute :url
        validates :url, presence: true, type: String

        # @return [Object, nil] A boolean flag that indicates if the server TLS certificate and host name should be checked.
        attribute :insecure

        # @return [String, nil] A PEM file containing the trusted CA certificates. The certificate presented by the server will be verified using these CA certificates. If C(ca_file) parameter is not set, system wide CA certificate store is used.
        attribute :ca_file
        validates :ca_file, type: String

        # @return [Object, nil] The maximum total time to wait for the response, in seconds. A value of zero (the default) means wait forever. If the timeout expires before the response is received an exception will be raised.
        attribute :timeout

        # @return [Object, nil] A boolean flag indicating if the SDK should ask the server to send compressed responses. The default is I(True). Note that this is a hint for the server, and that it may return uncompressed data even when this parameter is set to I(True).
        attribute :compress

        # @return [Object, nil] A boolean flag indicating if Kerberos authentication should be used instead of the default basic authentication.
        attribute :kerberos
      end
    end
  end
end
