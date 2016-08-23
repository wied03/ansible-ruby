# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Profitbricks_datacenter < Base
        # @return [Object] The name of the virtual datacenter.
        attribute :name
        validates :name, presence: true

        # @return [Object] The description of the virtual datacenter.
        attribute :description

        # @return [:"us/las", :"us/lasdev", :"de/fra", :"de/fkb", nil] The datacenter location.
        attribute :location
        validates :location, inclusion: {:in=>[:"us/las", :"us/lasdev", :"de/fra", :"de/fkb"], :message=>"%{value} needs to be :\"us/las\", :\"us/lasdev\", :\"de/fra\", :\"de/fkb\""}, allow_nil: true

        # @return [Object] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the datacenter to be created before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [:present, :absent, nil] create or terminate datacenters
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
