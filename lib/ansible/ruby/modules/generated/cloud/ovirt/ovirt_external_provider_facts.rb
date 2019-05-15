# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV external providers.
      class Ovirt_external_provider_facts < Base
        # @return [:os_image, :os_network, :os_volume, :foreman] Type of the external provider.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:os_image, :os_network, :os_volume, :foreman], :message=>"%{value} needs to be :os_image, :os_network, :os_volume, :foreman"}

        # @return [String, nil] Name of the external provider, can be used as glob expression.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
