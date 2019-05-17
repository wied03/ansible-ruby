# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, start, stop and delete Solaris zones. This module doesn't currently allow changing of options for a zone that's already been created.
      class Solaris_zone < Base
        # @return [:absent, :attached, :configured, :detached, :installed, :present, :running, :started, :stopped] C(present), configure and install the zone.,C(installed), synonym for C(present).,C(running), if the zone already exists, boot it, otherwise, configure and install the zone first, then boot it.,C(started), synonym for C(running).,C(stopped), shutdown a zone.,C(absent), destroy the zone.,C(configured), configure the ready so that it's to be attached.,C(attached), attach a zone, but do not boot it.,C(detached), shutdown and detach a zone
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :attached, :configured, :detached, :installed, :present, :running, :started, :stopped], :message=>"%{value} needs to be :absent, :attached, :configured, :detached, :installed, :present, :running, :started, :stopped"}

        # @return [String] Zone name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The path where the zone will be created. This is required when the zone is created, but not used otherwise.
        attribute :path
        validates :path, type: String

        # @return [:yes, :no, nil] Whether to create a sparse (C(true)) or whole root (C(false)) zone.
        attribute :sparse
        validates :sparse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The password hash for the root account. If not specified, the zone's root account will not have a password.
        attribute :root_password
        validates :root_password, type: String

        # @return [String, nil] The zonecfg configuration commands for this zone. See zonecfg(1M) for the valid options and syntax. Typically this is a list of options separated by semi-colons or new lines, e.g. "set auto-boot=true;add net;set physical=bge0;set address=10.1.1.1;end"
        attribute :config
        validates :config, type: String

        # @return [String, nil] Extra options to the zonecfg(1M) create command.
        attribute :create_options
        validates :create_options, type: String

        # @return [String, nil] Extra options to the zoneadm(1M) install command. To automate Solaris 11 zone creation, use this to specify the profile XML file, e.g. install_options="-c sc_profile.xml"
        attribute :install_options
        validates :install_options, type: String

        # @return [String, nil] Extra options to the zoneadm attach command. For example, this can be used to specify whether a minimum or full update of packages is required and if any packages need to be deleted. For valid values, see zoneadm(1M)
        attribute :attach_options
        validates :attach_options, type: String

        # @return [Integer, nil] Timeout, in seconds, for zone to boot.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
