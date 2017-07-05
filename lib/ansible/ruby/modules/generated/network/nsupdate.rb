# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove DNS records using DDNS updates
      # DDNS works well with both bind and Microsoft DNS (see https://technet.microsoft.com/en-us/library/cc961412.aspx)
      class Nsupdate < Base
        # @return [:present, :absent, nil] Manage DNS record.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Apply DNS modification on this server.
        attribute :server
        validates :server, presence: true, type: String

        # @return [String, nil] Use TSIG key name to authenticate against DNS C(server)
        attribute :key_name
        validates :key_name, type: String

        # @return [String, nil] Use TSIG key secret, associated with C(key_name), to authenticate against C(server)
        attribute :key_secret
        validates :key_secret, type: String

        # @return [:"HMAC-MD5.SIG-ALG.REG.INT", :"hmac-md5", :"hmac-sha1", :"hmac-sha224", :"hmac-sha256", :"hamc-sha384", :"hmac-sha512", nil] Specify key algorithm used by C(key_secret).
        attribute :key_algorithm
        validates :key_algorithm, inclusion: {:in=>[:"HMAC-MD5.SIG-ALG.REG.INT", :"hmac-md5", :"hmac-sha1", :"hmac-sha224", :"hmac-sha256", :"hamc-sha384", :"hmac-sha512"], :message=>"%{value} needs to be :\"HMAC-MD5.SIG-ALG.REG.INT\", :\"hmac-md5\", :\"hmac-sha1\", :\"hmac-sha224\", :\"hmac-sha256\", :\"hamc-sha384\", :\"hmac-sha512\""}, allow_nil: true

        # @return [String] DNS record will be modified on this C(zone).
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [String] Sets the DNS record to modify.
        attribute :record
        validates :record, presence: true, type: String

        # @return [String, nil] Sets the record type.
        attribute :type
        validates :type, type: String

        # @return [Integer, nil] Sets the record TTL.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [String, nil] Sets the record value.
        attribute :value
        validates :value, type: String
      end
    end
  end
end
