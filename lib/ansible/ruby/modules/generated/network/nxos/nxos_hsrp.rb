# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages HSRP configuration on NX-OS switches.
      class Nxos_hsrp < Base
        # @return [Integer] HSRP group number.
        attribute :group
        validates :group, presence: true, type: Integer

        # @return [String] Full name of interface that is being managed for HSRP.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [1, 2, nil] HSRP version.
        attribute :version
        validates :version, inclusion: {:in=>[1, 2], :message=>"%{value} needs to be 1, 2"}, allow_nil: true

        # @return [Integer, nil] HSRP priority.
        attribute :priority
        validates :priority, type: Integer

        # @return [String, nil] HSRP virtual IP address.
        attribute :vip
        validates :vip, type: String

        # @return [String, nil] Authentication string.
        attribute :auth_string
        validates :auth_string, type: String

        # @return [:text, :md5, nil] Authentication type.
        attribute :auth_type
        validates :auth_type, inclusion: {:in=>[:text, :md5], :message=>"%{value} needs to be :text, :md5"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
