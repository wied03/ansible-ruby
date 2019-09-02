# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures vHBA templates on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_vhba_template < Base
        # @return [:present, :absent, nil] If C(present), will verify vHBA templates are present and will create if needed.,If C(absent), will verify vHBA templates are absent and will delete if needed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the virtual HBA template.,This name can be between 1 and 16 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the template is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A user-defined description of the template.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description

        # @return [:A, :B, nil] The Fabric ID field.,The name of the fabric interconnect that vHBAs created with this template are associated with.
        attribute :fabric
        validates :fabric, expression_inclusion: {:in=>[:A, :B], :message=>"%{value} needs to be :A, :B"}, allow_nil: true

        # @return [:none, :primary, :secondary, nil] The Redundancy Type used for template pairing from the Primary or Secondary redundancy template.,primary — Creates configurations that can be shared with the Secondary template.,Any other shared changes on the Primary template are automatically synchronized to the Secondary template.,secondary — All shared configurations are inherited from the Primary template.,none - Legacy vHBA template behavior. Select this option if you do not want to use redundancy.
        attribute :redundancy_type
        validates :redundancy_type, expression_inclusion: {:in=>[:none, :primary, :secondary], :message=>"%{value} needs to be :none, :primary, :secondary"}, allow_nil: true

        # @return [String, nil] The VSAN to associate with vHBAs created from this template.
        attribute :vsan
        validates :vsan, type: String

        # @return [:"initial-template", :"updating-template", nil] The Template Type field.,This can be one of the following:,initial-template — vHBAs created from this template are not updated if the template changes.,updating-template - vHBAs created from this template are updated if the template changes.
        attribute :template_type
        validates :template_type, expression_inclusion: {:in=>[:"initial-template", :"updating-template"], :message=>"%{value} needs to be :\"initial-template\", :\"updating-template\""}, allow_nil: true

        # @return [String, nil] The Max Data Field Size field.,The maximum size of the Fibre Channel frame payload bytes that the vHBA supports.,Enter an string between '256' and '2112'.
        attribute :max_data
        validates :max_data, type: String

        # @return [String, nil] The WWPN pool that a vHBA created from this template uses to derive its WWPN address.
        attribute :wwpn_pool
        validates :wwpn_pool, type: String

        # @return [Object, nil] The QoS policy that is associated with vHBAs created from this template.
        attribute :qos_policy

        # @return [Object, nil] The SAN pin group that is associated with vHBAs created from this template.
        attribute :pin_group

        # @return [String, nil] The statistics collection policy that is associated with vHBAs created from this template.
        attribute :stats_policy
        validates :stats_policy, type: String

        # @return [String, nil] Org dn (distinguished name)
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
