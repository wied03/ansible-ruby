# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure SSLProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_sslprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Ciphers suites represented as defined by U(http://www.openssl.org/docs/apps/ciphers.html).,Default value when not specified in API or module is interpreted by Avi Controller as AES:3DES:RC4.
        attribute :accepted_ciphers
        validates :accepted_ciphers, type: String

        # @return [Array<Hash>, Hash, nil] Set of versions accepted by the server.
        attribute :accepted_versions
        validates :accepted_versions, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] Cipher_enums of sslprofile.
        attribute :cipher_enums
        validates :cipher_enums, type: TypeGeneric.new(String)

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Dh parameters used in ssl.,At this time, it is not configurable and is set to 2048 bits.
        attribute :dhparam

        # @return [Object, nil] Enable ssl session re-use.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enable_ssl_session_reuse

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Prefer the ssl cipher ordering presented by the client during the ssl handshake over the one specified in the ssl profile.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :prefer_client_cipher_ordering

        # @return [Boolean, nil] Send 'close notify' alert message for a clean shutdown of the ssl connection.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :send_close_notify
        validates :send_close_notify, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] Sslrating settings for sslprofile.
        attribute :ssl_rating
        validates :ssl_rating, type: Hash

        # @return [Object, nil] The amount of time before an ssl session expires.,Default value when not specified in API or module is interpreted by Avi Controller as 86400.
        attribute :ssl_session_timeout

        # @return [Object, nil] List of tag.
        attribute :tags

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
