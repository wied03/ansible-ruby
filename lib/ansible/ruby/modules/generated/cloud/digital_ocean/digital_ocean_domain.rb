# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete a DNS domain in DigitalOcean.
      class Digital_ocean_domain < Base
        # @return [:present, :absent, nil] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Numeric, the droplet id you want to operate on.
        attribute :id

        # @return [String, nil] String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key, or the name of a domain.
        attribute :name
        validates :name, type: String

        # @return [String, nil] An 'A' record for '@' ($ORIGIN) will be created with the value 'ip'.  'ip' is an IP version 4 address.
        attribute :ip
        validates :ip, type: String
      end
    end
  end
end
