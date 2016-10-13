# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages virtual machines supported by I(libvirt).
      class Virt < Base
        # @return [String] name of the guest VM being managed. Note that VM must be previously defined with xml.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:running, :shutdown, :destroyed, :paused, nil] Note that there may be some lag for state requests like C(shutdown) since these refer only to VM states. After starting a guest, it may not be immediately accessible.
        attribute :state
        validates :state, inclusion: {:in=>[:running, :shutdown, :destroyed, :paused], :message=>"%{value} needs to be :running, :shutdown, :destroyed, :paused"}, allow_nil: true

        # @return [:create, :status, :start, :stop, :pause, :unpause, :shutdown, :undefine, :destroy, :get_xml, :autostart, :freemem, :list_vms, :info, :nodeinfo, :virttype, :define, nil] in addition to state management, various non-idempotent commands are available. See examples
        attribute :command
        validates :command, inclusion: {:in=>[:create, :status, :start, :stop, :pause, :unpause, :shutdown, :undefine, :destroy, :get_xml, :autostart, :freemem, :list_vms, :info, :nodeinfo, :virttype, :define], :message=>"%{value} needs to be :create, :status, :start, :stop, :pause, :unpause, :shutdown, :undefine, :destroy, :get_xml, :autostart, :freemem, :list_vms, :info, :nodeinfo, :virttype, :define"}, allow_nil: true

        # @return [String, nil] libvirt connection uri
        attribute :uri
        validates :uri, type: String

        # @return [String, nil] XML document used with the define command
        attribute :xml
        validates :xml, type: String
      end
    end
  end
end
