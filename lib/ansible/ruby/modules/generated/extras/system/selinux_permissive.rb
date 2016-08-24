# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Selinux_permissive < Base
        # @return [Object] the domain that will be added or removed from the list of permissive domains
        attribute :domain
        validates :domain, presence: true

        # @return [:True, :False] indicate if the domain should or should not be set as permissive
        attribute :permissive
        validates :permissive, presence: true, inclusion: {:in=>[:True, :False], :message=>"%{value} needs to be :True, :False"}

        # @return [Boolean, nil] automatically reload the policy after a change,default is set to 'false' as that's what most people would want after changing one domain,Note that this doesn't work on older version of the library (example EL 6), the module will silently ignore it in this case
        attribute :no_reload
        validates :no_reload, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] name of the SELinux policy store to use
        attribute :store
      end
    end
  end
end
