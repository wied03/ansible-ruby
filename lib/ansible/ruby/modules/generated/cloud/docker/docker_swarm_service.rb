# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage docker services. Allows live altering of already defined services

      class Docker_swarm_service < Base
        # @return [String] Service name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Service image path and tag. Maps docker service IMAGE parameter.
        attribute :image
        validates :image, presence: true, type: String

        # @return [:present, :absent] Service state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] List comprised of the command and the arguments to be run inside,the container
        attribute :args

        # @return [Object, nil] List of the service constraints.,Maps docker service --constraint option.
        attribute :constraints

        # @return [String, nil] Container hostname,Maps docker service --hostname option.,Requires api_version >= 1.25
        attribute :hostname
        validates :hostname, type: String

        # @return [Symbol, nil] Allocate a pseudo-TTY,Maps docker service --tty option.,Requires api_version >= 1.25
        attribute :tty
        validates :tty, type: Symbol

        # @return [Object, nil] List of custom DNS servers.,Maps docker service --dns option.,Requires api_version >= 1.25
        attribute :dns

        # @return [Object, nil] List of custom DNS search domains.,Maps docker service --dns-search option.,Requires api_version >= 1.25
        attribute :dns_search

        # @return [Object, nil] List of custom DNS options.,Maps docker service --dns-option option.,Requires api_version >= 1.25
        attribute :dns_options

        # @return [Symbol, nil] Force update even if no changes require it.,Maps to docker service update --force option.,Requires api_version >= 1.25
        attribute :force_update
        validates :force_update, type: Symbol

        # @return [Object, nil] List of the service labels.,Maps docker service --label option.
        attribute :labels

        # @return [Object, nil] List of the service containers labels.,Maps docker service --container-label option.
        attribute :container_labels

        # @return [:vip, :dnsrr, nil] Service endpoint mode.,Maps docker service --endpoint-mode option.
        attribute :endpoint_mode
        validates :endpoint_mode, inclusion: {:in=>[:vip, :dnsrr], :message=>"%{value} needs to be :vip, :dnsrr"}, allow_nil: true

        # @return [Object, nil] List of the service environment variables.,Maps docker service --env option.
        attribute :env

        # @return [String, nil] Configure the logging driver for a service
        attribute :log_driver
        validates :log_driver, type: String

        # @return [Object, nil] Options for service logging driver
        attribute :log_driver_options

        # @return [Float, nil] Service CPU limit. 0 equals no limit.,Maps docker service --limit-cpu option.
        attribute :limit_cpu
        validates :limit_cpu, type: Float

        # @return [Float, nil] Service CPU reservation. 0 equals no reservation.,Maps docker service --reserve-cpu option.
        attribute :reserve_cpu
        validates :reserve_cpu, type: Float

        # @return [Integer, nil] Service memory limit in MB. 0 equals no limit.,Maps docker service --limit-memory option.
        attribute :limit_memory
        validates :limit_memory, type: Integer

        # @return [Integer, nil] Service memory reservation in MB. 0 equals no reservation.,Maps docker service --reserve-memory option.
        attribute :reserve_memory
        validates :reserve_memory, type: Integer

        # @return [String, nil] Service replication mode.,Maps docker service --mode option.
        attribute :mode
        validates :mode, type: String

        # @return [Object, nil] List of dictionaries describing the service mounts.,Every item must be a dictionary exposing the keys source, target, type (defaults to 'bind'), readonly (defaults to false),Maps docker service --mount option.
        attribute :mounts

        # @return [Object, nil] List of dictionaries describing the service secrets.,Every item must be a dictionary exposing the keys secret_id, secret_name, filename, uid (defaults to 0), gid (defaults to 0), mode (defaults to 0o444),Maps docker service --secret option.
        attribute :secrets

        # @return [Object, nil] List of dictionaries describing the service configs.,Every item must be a dictionary exposing the keys config_id, config_name, filename, uid (defaults to 0), gid (defaults to 0), mode (defaults to 0o444),Maps docker service --config option.
        attribute :configs

        # @return [Object, nil] List of the service networks names.,Maps docker service --network option.
        attribute :networks

        # @return [Object, nil] List of dictionaries describing the service published ports.,Every item must be a dictionary exposing the keys published_port, target_port, protocol (defaults to 'tcp'), mode <ingress|host>, default to ingress.,Only used with api_version >= 1.25
        attribute :publish

        # @return [Integer, nil] Number of containers instantiated in the service. Valid only if ``mode=='replicated'``.,If set to -1, and service is not present, service replicas will be set to 1.,If set to -1, and service is present, service replicas will be unchanged.,Maps docker service --replicas option.
        attribute :replicas
        validates :replicas, type: Integer

        # @return [:none, :"on-failure", :any, nil] Restart condition of the service.,Maps docker service --restart-condition option.
        attribute :restart_policy
        validates :restart_policy, inclusion: {:in=>[:none, :"on-failure", :any], :message=>"%{value} needs to be :none, :\"on-failure\", :any"}, allow_nil: true

        # @return [Integer, nil] Maximum number of service restarts.,Maps docker service --restart-max-attempts option.
        attribute :restart_policy_attempts
        validates :restart_policy_attempts, type: Integer

        # @return [Integer, nil] Delay between restarts.,Maps docker service --restart-delay option.
        attribute :restart_policy_delay
        validates :restart_policy_delay, type: Integer

        # @return [Integer, nil] Restart policy evaluation window.,Maps docker service --restart-window option.
        attribute :restart_policy_window
        validates :restart_policy_window, type: Integer

        # @return [Integer, nil] Rolling update delay,Maps docker service --update-delay option
        attribute :update_delay
        validates :update_delay, type: Integer

        # @return [Integer, nil] Rolling update parallelism,Maps docker service --update-parallelism option
        attribute :update_parallelism
        validates :update_parallelism, type: Integer

        # @return [:continue, :pause, nil] Action to take in case of container failure,Maps to docker service --update-failure-action option
        attribute :update_failure_action
        validates :update_failure_action, inclusion: {:in=>[:continue, :pause], :message=>"%{value} needs to be :continue, :pause"}, allow_nil: true

        # @return [Integer, nil] Time to monitor updated tasks for failures, in nanoseconds.,Maps to docker service --update-monitor option
        attribute :update_monitor
        validates :update_monitor, type: Integer

        # @return [Float, nil] Fraction of tasks that may fail during an update before the failure action is invoked,Maps to docker service --update-max-failure-ratio
        attribute :update_max_failure_ratio
        validates :update_max_failure_ratio, type: Float

        # @return [:"stop-first", :"start-first", nil] Specifies the order of operations when rolling out an updated task.,Maps to docker service --update-order
        attribute :update_order
        validates :update_order, inclusion: {:in=>[:"stop-first", :"start-first"], :message=>"%{value} needs to be :\"stop-first\", :\"start-first\""}, allow_nil: true

        # @return [String, nil] username or UID
        attribute :user
        validates :user, type: String
      end
    end
  end
end
