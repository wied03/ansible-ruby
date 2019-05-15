# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An SslCertificate resource. This resource provides a mechanism to upload an SSL key and certificate to the load balancer to serve secure connections from the user.
      class Gcp_compute_ssl_certificate < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The certificate in PEM format.,The certificate chain must be no greater than 5 certs long.,The chain must include at least one intermediate cert.
        attribute :certificate
        validates :certificate, type: String

        # @return [String, nil] An optional description of this resource.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The private key in PEM format.
        attribute :private_key
        validates :private_key, type: String
      end
    end
  end
end
