# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the trust relationships between BIG-IPs. Devices, once peered, cannot be updated. If updating is needed, the peer must first be removed before it can be re-added to the trust.
      class Bigip_device_trust < Base
        # @return [String] The peer address to connect to and trust for synchronizing configuration. This is typically the management address of the remote device, but may also be a Self IP.
        attribute :peer_server
        validates :peer_server, presence: true, type: String

        # @return [String, nil] The hostname that you want to associate with the device. This value will be used to easily distinguish this device in BIG-IP configuration.,When trusting a new device, if this parameter is not specified, the value of C(peer_server) will be used as a default.
        attribute :peer_hostname
        validates :peer_hostname, type: String

        # @return [String, nil] The API username of the remote peer device that you are trusting. Note that the CLI user cannot be used unless it too has an API account. If this value is not specified, then the value of C(user), or the environment variable C(F5_USER) will be used.
        attribute :peer_user
        validates :peer_user, type: String

        # @return [String, nil] The password of the API username of the remote peer device that you are trusting. If this value is not specified, then the value of C(password), or the environment variable C(F5_PASSWORD) will be used.
        attribute :peer_password
        validates :peer_password, type: String

        # @return [:peer, :subordinate, nil] Specifies whether the device you are adding is a Peer or a Subordinate. The default is C(peer).,The difference between the two is a matter of mitigating risk of compromise.,A subordinate device cannot sign a certificate for another device.,In the case where the security of an authority device in a trust domain is compromised, the risk of compromise is minimized for any subordinate device.,Designating devices as subordinate devices is recommended for device groups with a large number of member devices, where the risk of compromise is high.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:peer, :subordinate], :message=>"%{value} needs to be :peer, :subordinate"}, allow_nil: true

        # @return [:absent, :present, nil] When C(present), ensures the specified devices are trusted.,When C(absent), removes the device trusts.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
