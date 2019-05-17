# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and remove domain from the list of permissive domain.
      class Selinux_permissive < Base
        # @return [Object] the domain that will be added or removed from the list of permissive domains
        attribute :domain
        validates :domain, presence: true

        # @return [Symbol] indicate if the domain should or should not be set as permissive
        attribute :permissive
        validates :permissive, presence: true, type: Symbol

        # @return [:yes, :no, nil] automatically reload the policy after a change,default is set to 'false' as that's what most people would want after changing one domain,Note that this doesn't work on older version of the library (example EL 6), the module will silently ignore it in this case
        attribute :no_reload
        validates :no_reload, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] name of the SELinux policy store to use
        attribute :store
      end
    end
  end
end
