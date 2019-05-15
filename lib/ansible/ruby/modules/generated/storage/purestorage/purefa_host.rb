# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete or modify hosts on Pure Storage FlashArrays.
      class Purefa_host < Base
        # @return [String] The name of the host.
        attribute :host
        validates :host, presence: true, type: String

        # @return [:absent, :present, nil] Define whether the host should exist or not.,When removing host all connected volumes will be disconnected.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:fc, :iscsi, :mixed, nil] Defines the host connection protocol for volumes.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:fc, :iscsi, :mixed], :message=>"%{value} needs to be :fc, :iscsi, :mixed"}, allow_nil: true

        # @return [Array<String>, String, nil] List of wwns of the host if protocol is fc or mixed.
        attribute :wwns
        validates :wwns, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of IQNs of the host if protocol is iscsi or mixed.
        attribute :iqn
        validates :iqn, type: TypeGeneric.new(String)

        # @return [String, nil] Volume name to map to the host.
        attribute :volume
        validates :volume, type: String

        # @return [:hpux, :vms, :aix, :esxi, :solaris, :"hitachi-vsp", :"oracle-vm-server", :"", nil] Define which operating systen the host is. Recommend for ActiveCluster integration
        attribute :personality
        validates :personality, inclusion: {:in=>[:hpux, :vms, :aix, :esxi, :solaris, :"hitachi-vsp", :"oracle-vm-server", :""], :message=>"%{value} needs to be :hpux, :vms, :aix, :esxi, :solaris, :\"hitachi-vsp\", :\"oracle-vm-server\", :\"\""}, allow_nil: true
      end
    end
  end
end
