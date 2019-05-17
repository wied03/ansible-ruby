# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove COE cluster template from the OpenStack Container Infra service.
      class Os_coe_cluster_template < Base
        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone

        # @return [:kubernetes, :swarm, :mesos, nil] The Container Orchestration Engine for this clustertemplate
        attribute :coe
        validates :coe, inclusion: {:in=>[:kubernetes, :swarm, :mesos], :message=>"%{value} needs to be :kubernetes, :swarm, :mesos"}, allow_nil: true

        # @return [String, nil] The DNS nameserver address
        attribute :dns_nameserver
        validates :dns_nameserver, type: String

        # @return [:devicemapper, :overlay, nil] Docker storage driver
        attribute :docker_storage_driver
        validates :docker_storage_driver, inclusion: {:in=>[:devicemapper, :overlay], :message=>"%{value} needs to be :devicemapper, :overlay"}, allow_nil: true

        # @return [Object, nil] The size in GB of the docker volume
        attribute :docker_volume_size

        # @return [Object, nil] The external network to attach to the Cluster
        attribute :external_network_id

        # @return [Object, nil] The fixed network name to attach to the Cluster
        attribute :fixed_network

        # @return [Object, nil] The fixed subnet name to attach to the Cluster
        attribute :fixed_subnet

        # @return [Object, nil] The flavor of the minion node for this ClusterTemplate
        attribute :flavor_id

        # @return [:yes, :no, nil] Indicates whether created clusters should have a floating ip or not
        attribute :floating_ip_enabled
        validates :floating_ip_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Name or ID of the keypair to use.
        attribute :keypair_id
        validates :keypair_id, type: String

        # @return [String, nil] Image id the cluster will be based on
        attribute :image_id
        validates :image_id, type: String

        # @return [Object, nil] One or more key/value pairs
        attribute :labels

        # @return [Object, nil] Address of a proxy that will receive all HTTP requests and relay them The format is a URL including a port number
        attribute :http_proxy

        # @return [Object, nil] Address of a proxy that will receive all HTTPS requests and relay them. The format is a URL including a port number
        attribute :https_proxy

        # @return [Object, nil] The flavor of the master node for this ClusterTemplate
        attribute :master_flavor_id

        # @return [:yes, :no, nil] Indicates whether created clusters should have a load balancer for master nodes or not
        attribute :master_lb_enabled
        validates :master_lb_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Name that has to be given to the cluster template
        attribute :name
        validates :name, presence: true, type: String

        # @return [:flannel, :calico, :docker, nil] The name of the driver used for instantiating container networks
        attribute :network_driver
        validates :network_driver, inclusion: {:in=>[:flannel, :calico, :docker], :message=>"%{value} needs to be :flannel, :calico, :docker"}, allow_nil: true

        # @return [Object, nil] A comma separated list of IPs for which proxies should not be used in the cluster
        attribute :no_proxy

        # @return [:yes, :no, nil] Indicates whether the ClusterTemplate is public or not
        attribute :public
        validates :public, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Indicates whether the docker registry is enabled
        attribute :registry_enabled
        validates :registry_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:vm, :bm, nil] Server type for this ClusterTemplate
        attribute :server_type
        validates :server_type, inclusion: {:in=>[:vm, :bm], :message=>"%{value} needs to be :vm, :bm"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Indicates whether the TLS should be disabled
        attribute :tls_disabled
        validates :tls_disabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:cinder, :rexray, nil] The name of the driver used for instantiating container volumes
        attribute :volume_driver
        validates :volume_driver, inclusion: {:in=>[:cinder, :rexray], :message=>"%{value} needs to be :cinder, :rexray"}, allow_nil: true
      end
    end
  end
end
