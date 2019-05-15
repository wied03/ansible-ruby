# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete/assign a floating IP.
      class Digital_ocean_floating_ip < Base
        # @return [:present, :absent, nil] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Public IP address of the Floating IP. Used to remove an IP
        attribute :ip
        validates :ip, type: String

        # @return [String, nil] The region that the Floating IP is reserved to.
        attribute :region
        validates :region, type: String

        # @return [Integer, nil] The Droplet that the Floating IP has been assigned to.
        attribute :droplet_id
        validates :droplet_id, type: Integer

        # @return [Object] DigitalOcean OAuth token.
        attribute :oauth_token
        validates :oauth_token, presence: true
      end
    end
  end
end
