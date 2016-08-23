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

        # @return [String, nil] Linode API key
        attribute :api_key
        validates :api_key, type: String

        # @return [String, nil] Name to give the instance (alphanumeric, dashes, underscore),To keep sanity on the Linode Web Console, name is prepended with LinodeID_
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] Unique ID of a linode server
        attribute :linode_id
        validates :linode_id, type: Integer

        # @return [Integer, nil] plan to use for the instance (Linode plan)
        attribute :plan
        validates :plan, type: Integer

        # @return [1, 12, 24, nil] payment term to use for the instance (payment term in months)
        attribute :payment_term
        validates :payment_term, inclusion: {:in=>[1, 12, 24], :message=>"%{value} needs to be 1, 12, 24"}, allow_nil: true

        # @return [String, nil] root password to apply to a new server (auto generated if missing)
        attribute :password
        validates :password, type: String

        # @return [String, nil] SSH public key applied to root user
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String

        # @return [Integer, nil] swap size in MB
        attribute :swap
        validates :swap, type: Integer

        # @return [Integer, nil] distribution to use for the instance (Linode Distribution)
        attribute :distribution
        validates :distribution, type: Integer

        # @return [Integer, nil] datacenter to create an instance in (Linode Datacenter)
        attribute :datacenter
        validates :datacenter, type: Integer

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
