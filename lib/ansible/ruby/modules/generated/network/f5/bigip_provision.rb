# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP module provisioning. This module will only provision at the standard levels of Dedicated, Nominal, and Minimum.
      class Bigip_provision < Base
        # @return [:am, :afm, :apm, :asm, :avr, :cgnat, :fps, :gtm, :ilx, :lc, :ltm, :pem, :sam, :swg, :vcmp] The module to provision in BIG-IP.
        attribute :module
        validates :module, presence: true, expression_inclusion: {:in=>[:am, :afm, :apm, :asm, :avr, :cgnat, :fps, :gtm, :ilx, :lc, :ltm, :pem, :sam, :swg, :vcmp], :message=>"%{value} needs to be :am, :afm, :apm, :asm, :avr, :cgnat, :fps, :gtm, :ilx, :lc, :ltm, :pem, :sam, :swg, :vcmp"}

        # @return [:dedicated, :nominal, :minimum, nil] Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to C(dedicated) requires setting all others to C(none). Setting the level of a module to C(none) means that the module is not activated.,This parameter is not relevant to C(cgnat) and will not be applied to the C(cgnat) module.
        attribute :level
        validates :level, expression_inclusion: {:in=>[:dedicated, :nominal, :minimum], :message=>"%{value} needs to be :dedicated, :nominal, :minimum"}, allow_nil: true

        # @return [:present, :absent, nil] The state of the provisioned module on the system. When C(present), guarantees that the specified module is provisioned at the requested level provided that there are sufficient resources on the device (such as physical RAM) to support the provisioned module. When C(absent), de-provision the module.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
