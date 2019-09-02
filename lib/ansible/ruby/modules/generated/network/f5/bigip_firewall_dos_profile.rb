# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AFM Denial of Service (DoS) profiles on a BIG-IP. To manage the vectors associated with a DoS profile, refer to the C(bigip_firewall_dos_vector) module.
      class Bigip_firewall_dos_profile < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description of the DoS profile.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] The default whitelist address list for the system to use to determine which IP addresses are legitimate.,The system does not examine traffic from the IP addresses in the list when performing DoS prevention.,To define a new whitelist, use the C(bigip_firewall_address_list) module.
        attribute :default_whitelist

        # @return [:low, :medium, :high, nil] Specifies the threshold sensitivity for the DoS profile.,Thresholds for detecting attacks are higher when sensitivity is C(low), and lower when sensitivity is C(high).,When creating a new profile, if this parameter is not specified, the default is C(medium).
        attribute :threshold_sensitivity
        validates :threshold_sensitivity, expression_inclusion: {:in=>[:low, :medium, :high], :message=>"%{value} needs to be :low, :medium, :high"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
