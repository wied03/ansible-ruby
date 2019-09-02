# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the life cycle of docker containers.
      # Supports check mode. Run with --check and --diff to view config difference and list of actions to be taken.
      class Docker_container < Base
        # @return [:yes, :no, nil] enable auto-removal of the container on daemon side when the container's process exits
        attribute :auto_remove
        validates :auto_remove, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Block IO (relative weight), between 10 and 1000.
        attribute :blkio_weight

        # @return [Array<String>, String, nil] List of capabilities to add to the container.
        attribute :capabilities
        validates :capabilities, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of capabilities to drop from the container.
        attribute :cap_drop
        validates :cap_drop, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Use with I(detach=false) to remove the container after successful execution.
        attribute :cleanup
        validates :cleanup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] Command to execute when the container starts. A command may be either a string or a list. Prior to version 2.4, strings were split on commas.
        attribute :command
        validates :command, type: TypeGeneric.new(String)

        # @return [Integer, nil] Limit CPU CFS (Completely Fair Scheduler) period
        attribute :cpu_period
        validates :cpu_period, type: Integer

        # @return [Integer, nil] Limit CPU CFS (Completely Fair Scheduler) quota
        attribute :cpu_quota
        validates :cpu_quota, type: Integer

        # @return [Object, nil] CPUs in which to allow execution C(1,3) or C(1-3).
        attribute :cpuset_cpus

        # @return [Object, nil] Memory nodes (MEMs) in which to allow execution C(0-3) or C(0,1)
        attribute :cpuset_mems

        # @return [Object, nil] CPU shares (relative weight).
        attribute :cpu_shares

        # @return [Boolean, nil] Enable detached mode to leave the container running in background. If disabled, the task will reflect the status of the container run (failed if the command failed).
        attribute :detach
        validates :detach, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] List of host device bindings to add to the container. Each binding is a mapping expressed in the format: <path_on_host>:<path_in_container>:<cgroup_permissions>
        attribute :devices
        validates :devices, type: TypeGeneric.new(String)

        # @return [Object, nil] list of DNS options
        attribute :dns_opts

        # @return [Object, nil] List of custom DNS servers.
        attribute :dns_servers

        # @return [Object, nil] List of custom DNS search domains.
        attribute :dns_search_domains

        # @return [Object, nil] Container domainname.
        attribute :domainname

        # @return [Hash, nil] Dictionary of key,value pairs.
        attribute :env
        validates :env, type: Hash

        # @return [String, nil] Path to a file, present on the target, containing environment variables I(FOO=BAR).,If variable also present in C(env), then C(env) value will override.
        attribute :env_file
        validates :env_file, type: String

        # @return [Object, nil] Command that overwrites the default ENTRYPOINT of the image.
        attribute :entrypoint

        # @return [Object, nil] Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's /etc/hosts file.
        attribute :etc_hosts

        # @return [Array<Integer>, Integer, nil] List of additional container ports which informs Docker that the container listens on the specified network ports at runtime. If the port is already exposed using EXPOSE in a Dockerfile, it does not need to be exposed again.
        attribute :exposed_ports
        validates :exposed_ports, type: TypeGeneric.new(Integer)

        # @return [:yes, :no, nil] Use the kill command when stopping a running container.
        attribute :force_kill
        validates :force_kill, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List of additional group names and/or IDs that the container process will run as.
        attribute :groups

        # @return [Object, nil] Container hostname.
        attribute :hostname

        # @return [:yes, :no, nil] When C(state) is I(present) or I(started) the module compares the configuration of an existing container to requested configuration. The evaluation includes the image version. If the image version in the registry does not match the container, the container will be recreated. Stop this behavior by setting C(ignore_image) to I(True).
        attribute :ignore_image
        validates :ignore_image, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Repository path and tag used to create the container. If an image is not found or pull is true, the image will be pulled from the registry. If no tag is included, 'latest' will be used.
        attribute :image
        validates :image, type: String

        # @return [:yes, :no, nil] Run an init inside the container that forwards signals and reaps processes. This option requires Docker API 1.25+.
        attribute :init
        validates :init, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Keep stdin open after a container is launched, even if not attached.
        attribute :interactive
        validates :interactive, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set the IPC mode for the container. Can be one of 'container:<name|id>' to reuse another container's IPC namespace or 'host' to use the host's IPC namespace within the container.
        attribute :ipc_mode

        # @return [:yes, :no, nil] Retain volumes associated with a removed container.
        attribute :keep_volumes
        validates :keep_volumes, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Override default signal used to kill a running container.
        attribute :kill_signal

        # @return [Integer, nil] Kernel memory limit (format: C(<number>[<unit>])). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte). Minimum is C(4M).,Omitting the unit defaults to bytes.
        attribute :kernel_memory
        validates :kernel_memory, type: Integer

        # @return [Object, nil] Dictionary of key value pairs.
        attribute :labels

        # @return [Array<String>, String, nil] List of name aliases for linked containers in the format C(container_name:alias).,Setting this will force container to be restarted.
        attribute :links
        validates :links, type: TypeGeneric.new(String)

        # @return [String, nil] Specify the logging driver. Docker uses I(json-file) by default.,See L(here,https://docs.docker.com/config/containers/logging/configure/) for possible choices.
        attribute :log_driver
        validates :log_driver, type: String

        # @return [Hash, nil] Dictionary of options specific to the chosen log_driver. See https://docs.docker.com/engine/admin/logging/overview/ for details.
        attribute :log_options
        validates :log_options, type: Hash

        # @return [Object, nil] Container MAC address (e.g. 92:d0:c6:0a:29:33)
        attribute :mac_address

        # @return [String, nil] Memory limit (format: C(<number>[<unit>])). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).,Omitting the unit defaults to bytes.
        attribute :memory
        validates :memory, type: String

        # @return [Integer, nil] Memory soft limit (format: C(<number>[<unit>])). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).,Omitting the unit defaults to bytes.
        attribute :memory_reservation
        validates :memory_reservation, type: Integer

        # @return [Integer, nil] Total memory limit (memory + swap, format: C(<number>[<unit>])). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).,Omitting the unit defaults to bytes.
        attribute :memory_swap
        validates :memory_swap, type: Integer

        # @return [Object, nil] Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.,If not set, the value will be remain the same if container exists and will be inherited from the host machine if it is (re-)created.
        attribute :memory_swappiness

        # @return [String] Assign a name to a new container or match an existing container.,When identifying an existing container name may be a name or a long or short container ID.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Connect the container to a network. Choices are "bridge", "host", "none" or "container:<name|id>"
        attribute :network_mode

        # @return [Object, nil] User namespace to use
        attribute :userns_mode

        # @return [Array<Hash>, Hash, nil] List of networks the container belongs to.,Each network is a dict with keys C(name), C(ipv4_address), C(ipv6_address), C(links), C(aliases).,For each network C(name) is required, all other keys are optional.,If included, C(links) or C(aliases) are lists.,For examples of the data structure and usage see EXAMPLES below.,To remove a container from one or more networks, use the C(purge_networks) option.,Note that as opposed to C(docker run ...), M(docker_container) does not remove the default network if C(networks) is specified. You need to explicity use C(purge_networks) to enforce the removal of the default network (and all other networks not explicitly mentioned in C(networks)).
        attribute :networks
        validates :networks, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Whether or not to disable OOM Killer for the container.
        attribute :oom_killer
        validates :oom_killer, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] An integer value containing the score given to the container in order to tune OOM killer preferences.
        attribute :oom_score_adj
        validates :oom_score_adj, type: Integer

        # @return [:yes, :no, nil] If set to true, output of the container command will be printed (only effective when log_driver is set to json-file or journald.
        attribute :output_logs
        validates :output_logs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use with the started state to pause running processes inside the container.
        attribute :paused
        validates :paused, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set the PID namespace mode for the container. Currently only supports 'host'.
        attribute :pid_mode

        # @return [:yes, :no, nil] Give extended privileges to the container.
        attribute :privileged
        validates :privileged, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List of ports to publish from the container to the host.,Use docker CLI syntax: C(8000), C(9000:8000), or C(0.0.0.0:9000:8000), where 8000 is a container port, 9000 is a host port, and 0.0.0.0 is a host interface.,Container ports must be exposed either in the Dockerfile or via the C(expose) option.,A value of C(all) will publish all exposed container ports to random host ports, ignoring any other mappings.,If C(networks) parameter is provided, will inspect each network to see if there exists a bridge network with optional parameter com.docker.network.bridge.host_binding_ipv4. If such a network is found, then published ports where no host IP address is specified will be bound to the host IP pointed to by com.docker.network.bridge.host_binding_ipv4. Note that the first bridge network with a com.docker.network.bridge.host_binding_ipv4 value encountered in the list of C(networks) is the one that will be used.
        attribute :published_ports

        # @return [:yes, :no, nil] If true, always pull the latest version of an image. Otherwise, will only pull an image when missing.
        attribute :pull
        validates :pull, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Remove the container from ALL networks not included in C(networks) parameter.,Any default networks such as I(bridge), if not found in C(networks), will be removed as well.
        attribute :purge_networks
        validates :purge_networks, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Mount the container's root file system as read-only.
        attribute :read_only
        validates :read_only, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use with present and started states to force the re-creation of an existing container.
        attribute :recreate
        validates :recreate, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use with started state to force a matching container to be stopped and restarted.
        attribute :restart
        validates :restart, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:no, :"on-failure", :always, :"unless-stopped", nil] Container restart policy. Place quotes around I(no) option.
        attribute :restart_policy
        validates :restart_policy, expression_inclusion: {:in=>[:no, :"on-failure", :always, :"unless-stopped"], :message=>"%{value} needs to be :no, :\"on-failure\", :always, :\"unless-stopped\""}, allow_nil: true

        # @return [Integer, nil] Use with restart policy to control maximum number of restart attempts.
        attribute :restart_retries
        validates :restart_retries, type: Integer

        # @return [Object, nil] Size of C(/dev/shm) (format: C(<number>[<unit>])). Number is positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).,Omitting the unit defaults to bytes. If you omit the size entirely, the system uses C(64M).
        attribute :shm_size

        # @return [Object, nil] List of security options in the form of C("label:user:User")
        attribute :security_opts

        # @return [:absent, :present, :stopped, :started, nil] I(absent) - A container matching the specified name will be stopped and removed. Use force_kill to kill the container rather than stopping it. Use keep_volumes to retain volumes associated with the removed container.,I(present) - Asserts the existence of a container matching the name and any provided configuration parameters. If no container matches the name, a container will be created. If a container matches the name but the provided configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and re-created with the requested config. Image version will be taken into account when comparing configuration. To ignore image version use the ignore_image option. Use the recreate option to force the re-creation of the matching container. Use force_kill to kill the container rather than stopping it. Use keep_volumes to retain volumes associated with a removed container.,I(started) - Asserts there is a running container matching the name and any provided configuration. If no container matches the name, a container will be created and started. If a container matching the name is found but the configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and a new container will be created with the requested configuration and started. Image version will be taken into account when comparing configuration. To ignore image version use the ignore_image option. Use recreate to always re-create a matching container, even if it is running. Use restart to force a matching container to be stopped and restarted. Use force_kill to kill a container rather than stopping it. Use keep_volumes to retain volumes associated with a removed container.,I(stopped) - Asserts that the container is first I(present), and then if the container is running moves it to a stopped state. Use force_kill to kill a container rather than stopping it.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :stopped, :started], :message=>"%{value} needs to be :absent, :present, :stopped, :started"}, allow_nil: true

        # @return [Object, nil] Override default signal used to stop the container.
        attribute :stop_signal

        # @return [Object, nil] Number of seconds to wait for the container to stop before sending SIGKILL.
        attribute :stop_timeout

        # @return [:yes, :no, nil] If C(yes), skip image verification.
        attribute :trust_image_content
        validates :trust_image_content, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Mount a tmpfs directory
        attribute :tmpfs

        # @return [:yes, :no, nil] Allocate a pseudo-TTY.
        attribute :tty
        validates :tty, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List of ulimit options. A ulimit is specified as C(nofile:262144:262144)
        attribute :ulimits

        # @return [Object, nil] Dictionary of key,value pairs.
        attribute :sysctls

        # @return [Object, nil] Sets the username or UID used and optionally the groupname or GID for the specified command.,Can be [ user | user:group | uid | uid:gid | user:gid | uid:group ]
        attribute :user

        # @return [Object, nil] Set the UTS namespace mode for the container.
        attribute :uts

        # @return [Array<String>, String, nil] List of volumes to mount within the container.,Use docker CLI-style syntax: C(/host:/container[:mode]),You can specify a read mode for the mount with either C(ro) or C(rw).,SELinux hosts can additionally use C(z) or C(Z) to use a shared or private label for the volume.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(String)

        # @return [Object, nil] The container volume driver.
        attribute :volume_driver

        # @return [Array<String>, String, nil] List of container names or Ids to get volumes from.
        attribute :volumes_from
        validates :volumes_from, type: TypeGeneric.new(String)

        # @return [Object, nil] Path to the working directory.
        attribute :working_dir
      end
    end
  end
end
