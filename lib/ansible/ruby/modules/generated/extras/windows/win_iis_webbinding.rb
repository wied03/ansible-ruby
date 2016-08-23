# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_iis_webbinding < Base
        # @return [String] Names of web site
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] State of the binding
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] The port to bind to / use for the new site.
        attribute :port
        validates :port, type: Fixnum

        # @return [Object] The IP address to bind to / use for the new site.
        attribute :ip

        # @return [Object] The host header to bind to / use for the new site.
        attribute :host_header

        # @return [String] The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).
        attribute :protocol
        validates :protocol, type: String

        # @return [String] Certificate hash for the SSL binding. The certificate hash is the unique identifier for the certificate.
        attribute :certificate_hash
        validates :certificate_hash, type: String

        # @return [String] Name of the certificate store where the certificate for the binding is located.
        attribute :certificate_store_name
        validates :certificate_store_name, type: String
      end
    end
  end
end
