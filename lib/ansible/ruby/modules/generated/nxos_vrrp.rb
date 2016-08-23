# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_vrrp < Base
        # @return [String] vrrp group number
        attribute :group
        validates :group, presence: true, type: String

        # @return [String] Full name of interface that is being managed for vrrp
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [String] vrrp priority
        attribute :priority
        validates :priority, type: String

        # @return [String] hsrp virtual IP address
        attribute :vip
        validates :vip, type: String

        # @return [String] clear text authentication string
        attribute :authentication
        validates :authentication, type: String

        # @return [String] Specify desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
