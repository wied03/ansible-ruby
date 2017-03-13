# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate Rackspace Cloud Autoscale Groups
      class Rax_scaling_group < Base
        # @return [Boolean, nil] Attach read-only configuration drive to server as label config-2
        attribute :config_drive
        validates :config_drive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The period of time, in seconds, that must pass before any scaling can occur after the previous scaling. Must be an integer between 0 and 86400 (24 hrs).
        attribute :cooldown

        # @return [:auto, :manual, nil] Disk partitioning strategy
        attribute :disk_config
        validates :disk_config, inclusion: {:in=>[:auto, :manual], :message=>"%{value} needs to be :auto, :manual"}, allow_nil: true

        # @return [Object, nil] Files to insert into the instance. Hash of C(remotepath: localpath)
        attribute :files

        # @return [Object] flavor to use for the instance
        attribute :flavor
        validates :flavor, presence: true

        # @return [Object] image to use for the instance. Can be an C(id), C(human_id) or C(name)
        attribute :image
        validates :image, presence: true

        # @return [Object, nil] key pair to use on the instance
        attribute :key_name

        # @return [Object, nil] List of load balancer C(id) and C(port) hashes
        attribute :loadbalancers

        # @return [Object] The maximum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.
        attribute :max_entities
        validates :max_entities, presence: true

        # @return [Object, nil] A hash of metadata to associate with the instance
        attribute :meta

        # @return [Object] The minimum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.
        attribute :min_entities
        validates :min_entities, presence: true

        # @return [Object] Name to give the scaling group
        attribute :name
        validates :name, presence: true

        # @return [String, nil] The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).
        attribute :networks
        validates :networks, type: String

        # @return [Object] The base name for servers created by Autoscale
        attribute :server_name
        validates :server_name, presence: true

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Data to be uploaded to the servers config drive. This option implies I(config_drive). Can be a file path or a string
        attribute :user_data

        # @return [:yes, :no, nil] wait for the scaling group to finish provisioning the minimum amount of servers
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
