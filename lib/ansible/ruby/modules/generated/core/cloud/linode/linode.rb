# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Linode < Base
        # @return [:present, :active, :started, :absent, :deleted, :stopped, :restarted, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :active, :started, :absent, :deleted, :stopped, :restarted], :message=>"%{value} needs to be :present, :active, :started, :absent, :deleted, :stopped, :restarted"}, allow_nil: true

        # @return [String] Linode API key
        attribute :api_key
        validates :api_key, type: String

        # @return [String] Name to give the instance (alphanumeric, dashes, underscore),To keep sanity on the Linode Web Console, name is prepended with LinodeID_
        attribute :name
        validates :name, type: String

        # @return [Fixnum] Unique ID of a linode server
        attribute :linode_id
        validates :linode_id, type: Fixnum

        # @return [Fixnum] plan to use for the instance (Linode plan)
        attribute :plan
        validates :plan, type: Fixnum

        # @return [1, 12, 24, nil] payment term to use for the instance (payment term in months)
        attribute :payment_term
        validates :payment_term, inclusion: {:in=>[1, 12, 24], :message=>"%{value} needs to be 1, 12, 24"}, allow_nil: true

        # @return [String] root password to apply to a new server (auto generated if missing)
        attribute :password
        validates :password, type: String

        # @return [String] SSH public key applied to root user
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String

        # @return [Fixnum] swap size in MB
        attribute :swap
        validates :swap, type: Fixnum

        # @return [Fixnum] distribution to use for the instance (Linode Distribution)
        attribute :distribution
        validates :distribution, type: Fixnum

        # @return [Fixnum] datacenter to create an instance in (Linode Datacenter)
        attribute :datacenter
        validates :datacenter, type: Fixnum

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end
