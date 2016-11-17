# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs a Cumulus Linux license. The module reports no change of status when a license is installed. For more details go the Cumulus Linux License Documentation at U(http://docs.cumulusnetwork.com) and the Licensing KB Site at U(https://support.cumulusnetworks.com/hc/en-us/sections/200507688)
      class Cl_license < Base
        # @return [Object] The full path to the license. Can be local path or HTTP URL.
        attribute :src
        validates :src, presence: true

        # @return [Boolean, nil] Force installation of a license. Typically not needed. It is recommended to manually run this command via the ansible command. A reload of switchd is not required. Running the force option in a playbook will break the idempotent state machine of the module and cause the switchd notification to kick in all the time, causing a disruption.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
