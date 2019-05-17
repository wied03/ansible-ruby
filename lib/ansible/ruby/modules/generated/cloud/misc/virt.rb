# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages virtual machines supported by I(libvirt).
      class Virt < Base
        # @return [String, nil] name of the guest VM being managed. Note that VM must be previously defined with xml.,This option is required unless I(command) is C(list_vms).
        attribute :name
        validates :name, type: String

        # @return [:destroyed, :paused, :running, :shutdown, nil] Note that there may be some lag for state requests like C(shutdown) since these refer only to VM states. After starting a guest, it may not be immediately accessible.
        attribute :state
        validates :state, inclusion: {:in=>[:destroyed, :paused, :running, :shutdown], :message=>"%{value} needs to be :destroyed, :paused, :running, :shutdown"}, allow_nil: true

        # @return [:create, :define, :destroy, :freemem, :get_xml, :info, :list_vms, :nodeinfo, :pause, :shutdown, :start, :status, :stop, :undefine, :unpause, :virttype, nil] In addition to state management, various non-idempotent commands are available.
        attribute :command
        validates :command, inclusion: {:in=>[:create, :define, :destroy, :freemem, :get_xml, :info, :list_vms, :nodeinfo, :pause, :shutdown, :start, :status, :stop, :undefine, :unpause, :virttype], :message=>"%{value} needs to be :create, :define, :destroy, :freemem, :get_xml, :info, :list_vms, :nodeinfo, :pause, :shutdown, :start, :status, :stop, :undefine, :unpause, :virttype"}, allow_nil: true

        # @return [Symbol, nil] start VM at host startup.
        attribute :autostart
        validates :autostart, type: Symbol

        # @return [String, nil] libvirt connection uri.
        attribute :uri
        validates :uri, type: String

        # @return [Object, nil] XML document used with the define command.,Must be raw XML content using C(lookup). XML cannot be reference to a file.
        attribute :xml
      end
    end
  end
end
