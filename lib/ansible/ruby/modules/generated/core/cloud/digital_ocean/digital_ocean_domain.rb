# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Digital_ocean_domain < Base
        # @return [String] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] DigitalOcean api token.
        attribute :api_token

        # @return [Object] Numeric, the droplet id you want to operate on.
        attribute :id

        # @return [String] String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key, or the name of a domain.
        attribute :name
        validates :name, type: String

        # @return [String] The IP address to point a domain at.
        attribute :ip
        validates :ip, type: String
      end
    end
  end
end
