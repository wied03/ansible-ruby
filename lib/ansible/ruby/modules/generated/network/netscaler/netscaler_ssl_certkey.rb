# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage ssl cerificate keys.
      class Netscaler_ssl_certkey < Base
        # @return [String, nil] Name for the certificate and private-key pair. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the certificate-key pair is created.,The following requirement applies only to the NetScaler CLI:,If the name includes one or more spaces, enclose the name in double or single quotation marks (for example, "my cert" or 'my cert').,Minimum length = 1
        attribute :certkey
        validates :certkey, type: String

        # @return [String, nil] Name of and, optionally, path to the X509 certificate file that is used to form the certificate-key pair. The certificate file should be present on the appliance's hard-disk drive or solid-state drive. Storing a certificate in any location other than the default might cause inconsistency in a high availability setup. /nsconfig/ssl/ is the default path.,Minimum length = 1
        attribute :cert
        validates :cert, type: String

        # @return [String, nil] Name of and, optionally, path to the private-key file that is used to form the certificate-key pair. The certificate file should be present on the appliance's hard-disk drive or solid-state drive. Storing a certificate in any location other than the default might cause inconsistency in a high availability setup. /nsconfig/ssl/ is the default path.,Minimum length = 1
        attribute :key
        validates :key, type: String

        # @return [Boolean, nil] Passphrase that was used to encrypt the private-key. Use this option to load encrypted private-keys in PEM format.
        attribute :password
        validates :password, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:DER, :PEM, :PFX, nil] Input format of the certificate and the private-key files. The three formats supported by the appliance are:,PEM - Privacy Enhanced Mail,DER - Distinguished Encoding Rule,PFX - Personal Information Exchange.
        attribute :inform
        validates :inform, expression_inclusion: {:in=>[:DER, :PEM, :PFX], :message=>"%{value} needs to be :DER, :PEM, :PFX"}, allow_nil: true

        # @return [String, nil] Pass phrase used to encrypt the private-key. Required when adding an encrypted private-key in PEM format.,Minimum length = 1
        attribute :passplain
        validates :passplain, type: String

        # @return [:enabled, :disabled, nil] Issue an alert when the certificate is about to expire.
        attribute :expirymonitor
        validates :expirymonitor, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Integer, nil] Time, in number of days, before certificate expiration, at which to generate an alert that the certificate is about to expire.,Minimum value = C(10),Maximum value = C(100)
        attribute :notificationperiod
        validates :notificationperiod, type: Integer
      end
    end
  end
end
