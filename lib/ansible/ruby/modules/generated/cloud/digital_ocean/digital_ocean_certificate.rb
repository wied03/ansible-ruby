# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Retrieve and remove certificates DigitalOcean.
      class Digital_ocean_certificate < Base
        # @return [String] The name of the certificate.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A PEM-formatted private key content of SSL Certificate.
        attribute :private_key
        validates :private_key, type: String

        # @return [String, nil] A PEM-formatted public SSL Certificate.
        attribute :leaf_certificate
        validates :leaf_certificate, type: String

        # @return [String, nil] The full PEM-formatted trust chain between the certificate authority's certificate and your domain's SSL certificate.
        attribute :certificate_chain
        validates :certificate_chain, type: String

        # @return [:present, :absent, nil] Whether the certificate should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
