# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages the static routes on HUAWEI CloudEngine switches.
      class Ce_static_route < Base
        # @return [Object] Destination ip address of static route.
        attribute :prefix
        validates :prefix, presence: true

        # @return [Object] Destination ip mask of static route.
        attribute :mask
        validates :mask, presence: true

        # @return [:v4, :v6] Destination ip address family type of static route.
        attribute :aftype
        validates :aftype, presence: true, expression_inclusion: {:in=>[:v4, :v6], :message=>"%{value} needs to be :v4, :v6"}

        # @return [Object, nil] Next hop address of static route.
        attribute :next_hop

        # @return [Object, nil] Next hop interface full name of static route.
        attribute :nhp_interface

        # @return [Object, nil] VPN instance of destination ip address.
        attribute :vrf

        # @return [Object, nil] VPN instance of next hop ip address.
        attribute :destvrf

        # @return [Object, nil] Route tag value (numeric).
        attribute :tag

        # @return [Object, nil] Name of the route. Used with the name parameter on the CLI.
        attribute :description

        # @return [Object, nil] Preference or administrative difference of route (range 1-255).
        attribute :pref

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
