# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This is a simple module that supports creating or removing vDCs. A vDC is required before you can create servers. This module has a dependency on profitbricks >= 1.0.0
      class Profitbricks_datacenter < Base
        # @return [Object] The name of the virtual datacenter.
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] The description of the virtual datacenter.
        attribute :description

        # @return [:"us/las", :"de/fra", :"de/fkb", nil] The datacenter location.
        attribute :location
        validates :location, inclusion: {:in=>[:"us/las", :"de/fra", :"de/fkb"], :message=>"%{value} needs to be :\"us/las\", :\"de/fra\", :\"de/fkb\""}, allow_nil: true

        # @return [Object, nil] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object, nil] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the datacenter to be created before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:present, :absent, nil] create or terminate datacenters
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
