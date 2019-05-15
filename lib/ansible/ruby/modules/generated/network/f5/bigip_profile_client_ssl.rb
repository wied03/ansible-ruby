# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages client SSL profiles on a BIG-IP.
      class Bigip_profile_client_ssl < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(clientssl) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [String, nil] Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.
        attribute :ciphers
        validates :ciphers, type: String

        # @return [Array<Hash>, Hash, nil] One or more certificates and keys to associate with the SSL profile. This option is always a list. The keys in the list dictate the details of the client/key/chain combination. Note that BIG-IPs can only have one of each type of each certificate/key type. This means that you can only have one RSA, one DSA, and one ECDSA per profile. If you attempt to assign two RSA, DSA, or ECDSA certificate/key combo, the device will reject this.,This list is a complex list that specifies a number of keys.
        attribute :cert_key_chain
        validates :cert_key_chain, type: TypeGeneric.new(Hash)

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:"netscape-reuse-cipher-change-bug", :"microsoft-big-sslv3-buffer", :"msie-sslv2-rsa-padding", :"ssleay-080-client-dh-bug", :"tls-d5-bug", :"tls-block-padding-bug", :"dont-insert-empty-fragments", :"no-ssl", :"no-dtls", :"no-session-resumption-on-renegotiation", :"no-tlsv1.1", :"no-tlsv1.2", :"single-dh-use", :"ephemeral-rsa", :"cipher-server-preference", :"tls-rollback-bug", :"no-sslv2", :"no-sslv3", :"no-tls", :"no-tlsv1", :"pkcs1-check-1", :"pkcs1-check-2", :"netscape-ca-dn-bug", :"netscape-demo-cipher-change-bug", nil] Options that the system uses for SSL processing in the form of a list. When creating a new profile, the list is provided by the parent profile.,When a C('') or C(none) value is provided all options for SSL processing are disabled.
        attribute :options
        validates :options, inclusion: {:in=>[:"netscape-reuse-cipher-change-bug", :"microsoft-big-sslv3-buffer", :"msie-sslv2-rsa-padding", :"ssleay-080-client-dh-bug", :"tls-d5-bug", :"tls-block-padding-bug", :"dont-insert-empty-fragments", :"no-ssl", :"no-dtls", :"no-session-resumption-on-renegotiation", :"no-tlsv1.1", :"no-tlsv1.2", :"single-dh-use", :"ephemeral-rsa", :"cipher-server-preference", :"tls-rollback-bug", :"no-sslv2", :"no-sslv3", :"no-tls", :"no-tlsv1", :"pkcs1-check-1", :"pkcs1-check-2", :"netscape-ca-dn-bug", :"netscape-demo-cipher-change-bug"], :message=>"%{value} needs to be :\"netscape-reuse-cipher-change-bug\", :\"microsoft-big-sslv3-buffer\", :\"msie-sslv2-rsa-padding\", :\"ssleay-080-client-dh-bug\", :\"tls-d5-bug\", :\"tls-block-padding-bug\", :\"dont-insert-empty-fragments\", :\"no-ssl\", :\"no-dtls\", :\"no-session-resumption-on-renegotiation\", :\"no-tlsv1.1\", :\"no-tlsv1.2\", :\"single-dh-use\", :\"ephemeral-rsa\", :\"cipher-server-preference\", :\"tls-rollback-bug\", :\"no-sslv2\", :\"no-sslv3\", :\"no-tls\", :\"no-tlsv1\", :\"pkcs1-check-1\", :\"pkcs1-check-2\", :\"netscape-ca-dn-bug\", :\"netscape-demo-cipher-change-bug\""}, allow_nil: true

        # @return [:require, :"require-strict", :request, nil] Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.,When C(request) is set the ssystem request secure renegotation of SSL connections.,C(require) is a default setting and when set the system permits initial SSL handshakes from clients but terminates renegotiations from unpatched clients.,The C(require-strict) setting the system requires strict renegotiation of SSL connections. In this mode the system refuses connections to insecure servers, and terminates existing SSL connections to insecure servers.
        attribute :secure_renegotiation
        validates :secure_renegotiation, inclusion: {:in=>[:require, :"require-strict", :request], :message=>"%{value} needs to be :require, :\"require-strict\", :request"}, allow_nil: true

        # @return [Object, nil] Enables or disables acceptance of non-SSL connections.,When creating a new profile, the setting is provided by the parent profile.
        attribute :allow_non_ssl

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
