# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided certificates.
      class Digital_ocean_certificate_facts < Base
        # @return [String, nil] Certificate ID that can be used to identify and reference a certificate.
        attribute :certificate_id
        validates :certificate_id, type: String
      end
    end
  end
end
