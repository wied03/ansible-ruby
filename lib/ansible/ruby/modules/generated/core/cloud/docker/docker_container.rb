# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Docker_container < Base
        # @return [Object, nil] Block IO (relative weight), between 10 and 1000.
        attribute :blkio_weight

        # @return [Object, nil] List of capabilities to add to the container.
        attribute :capabilities

        # @return [String, nil] Command or list of commands to execute in the container when it starts.
        attribute :command
        validates :command, type: String

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
        validates :detach, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, nil] List of host device bindings to add to the container. Each binding is a mapping expressed in the format: <path_on_host>:<path_in_container>:<cgroup_permissions>
        attribute :devices
        validates :devices, type: TypeGeneric.new(String)

        # @return [Object, nil] List of custom DNS servers.
        attribute :dns_servers

        # @return [Object, nil] List of custom DNS search domains.
        attribute :dns_search_domains

        # @return [Hash, nil] Dictionary of key,value pairs.
        attribute :env
        validates :env, type: Hash

        # @return [Object, nil] Path to a file containing environment variables I(FOO=BAR).,If variable also present in C(env), then C(env) value will override.,Requires docker-py >= 1.4.0.
        attribute :env_file

        # @return [Object, nil] String or list of commands that overwrite the default ENTRYPOINT of the image.
        attribute :entrypoint

        # @return [Object, nil] Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's /etc/hosts file.
        attribute :etc_hosts

        # @return [Array<Integer>, nil] List of additional container ports to expose for port mappings or links. If the port is already exposed using EXPOSE in a Dockerfile, it does not need to be xposed again.
        attribute :exposed_ports
        validates :exposed_ports, type: TypeGeneric.new(Integer)

        # @return [Boolean, nil] Use the kill command when stopping a running container.
        attribute :force_kill
        validates :force_kill, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] List of additional group names and/or IDs that the container process will run as.
        attribute :groups

        # @return [Object, nil] Container hostname.
        attribute :hostname

        # @return [Boolean, nil] When C(state) is I(present) or I(started) the module compares the configuration of an existing container to requested configuration. The evaluation includes the image version. If the image vesion in the registry does not match the container, the container will be recreated. Stop this behavior by setting C(ignore_image) to I(True).
        attribute :ignore_image
        validates :ignore_image, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Repository path and tag used to create the container. If an image is not found or pull is true, the image will be pulled from the registry. If no tag is included, 'latest' will be used.
        attribute :image
        validates :image, type: String

        # @return [Boolean, nil] Keep stdin open after a container is launched, even if not attached.
        attribute :interactive
        validates :interactive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Set the IPC mode for the container. Can be one of 'container:<name|id>' to reuse another container's IPC namespace or 'host' to use the host's IPC namespace within the container.
        attribute :ipc_mode

        # @return [Boolean, nil] Retain volumes associated with a removed container.
        attribute :keep_volumes
        validates :keep_volumes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Override default signal used to kill a running container.
        attribute :kill_signal

        # @return [Integer, nil] Kernel memory limit (format: <number>[<unit>]). Number is a positive integer. Unit can be one of b, k, m, or g. Minimum is 4M.
        attribute :kernel_memory
        validates :kernel_memory, type: Integer

        # @return [Object, nil] Dictionary of key value pairs.
        attribute :labels

        # @return [Array<String>, nil] List of name aliases for linked containers in the format C(container_name:alias)
        attribute :links
        validates :links, type: TypeGeneric.new(String)

        # @return [:"json-file", :syslog, :journald, :gelf, :fluentd, :awslogs, :splunk, nil] Specify the logging driver.
        attribute :log_driver
        validates :log_driver, inclusion: {:in=>[:"json-file", :syslog, :journald, :gelf, :fluentd, :awslogs, :splunk], :message=>"%{value} needs to be :\"json-file\", :syslog, :journald, :gelf, :fluentd, :awslogs, :splunk"}, allow_nil: true

        # @return [Hash, nil] Dictionary of options specific to the chosen log_driver. See https://docs.docker.com/engine/admin/logging/overview/ for details.
        attribute :log_options
        validates :log_options, type: Hash

        # @return [Object, nil] Container MAC address (e.g. 92:d0:c6:0a:29:33)
        attribute :mac_address

        # @return [Integer, nil] Memory limit (format: <number>[<unit>]). Number is a positive integer. Unit can be one of b, k, m, or g
        attribute :memory
        validates :memory, type: Integer

        # @return [Integer, nil] Memory soft limit (format: <number>[<unit>]). Number is a positive integer. Unit can be one of b, k, m, or g
        attribute :memory_reservation
        validates :memory_reservation, type: Integer

        # @return [Integer, nil] Total memory limit (memory + swap, format:<number>[<unit>]). Number is a positive integer. Unit can be one of b, k, m, or g.
        attribute :memory_swap
        validates :memory_swap, type: Integer

        # @return [Integer, nil] Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.
        attribute :memory_swappiness
        validates :memory_swappiness, type: Integer

        # @return [String] Assign a name to a new container or match an existing container.,When identifying an existing container name may be a name or a long or short container ID.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:bridge, :"container:<name|id>", :host, :none, nil] Connect the container to a network.
        attribute :network_mode
        validates :network_mode, inclusion: {:in=>[:bridge, :"container:<name|id>", :host, :none], :message=>"%{value} needs to be :bridge, :\"container:<name|id>\", :host, :none"}, allow_nil: true

        # @return [Array<Hash>, nil] List of networks the container belongs to.,Each network is a dict with keys C(name), C(ipv4_address), C(ipv6_address), C(links), C(aliases).,For each network C(name) is required, all other keys are optional.,If included, C(links) or C(aliases) are lists.,For examples of the data structure and usage see EXAMPLES below.,To remove a container from one or more networks, use the C(purge_networks) option.
        attribute :networks
        validates :networks, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Whether or not to disable OOM Killer for the container.
        attribute :oom_killer
        validates :oom_killer, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with the started state to pause running processes inside the container.
        attribute :paused
        validates :paused, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Set the PID namespace mode for the container. Currenly only supports 'host'.
        attribute :pid_mode

        # @return [Boolean, nil] Give extended privileges to the container.
        attribute :privileged
        validates :privileged, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] List of ports to publish from the container to the host.,Use docker CLI syntax: C(8000), C(9000:8000), or C(0.0.0.0:9000:8000), where 8000 is a container port, 9000 is a host port, and 0.0.0.0 is a host interface.,Container ports must be exposed either in the Dockerfile or via the C(expose) option.,A value of ALL will publish all exposed container ports to random host ports, ignoring any other mappings.
        attribute :published_ports

        # @return [Boolean, nil] If true, always pull the latest version of an image. Otherwise, will only pull an image when missing.
        attribute :pull
        validates :pull, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Remove the container from ALL networks not included in C(networks) parameter.,Any default networks such as I(bridge), if not found in C(networks), will be removed as well.
        attribute :purge_networks
        validates :purge_networks, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Mount the container's root file system as read-only.
        attribute :read_only
        validates :read_only, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with present and started states to force the re-creation of an existing container.
        attribute :recreate
        validates :recreate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with started state to force a matching container to be stopped and restarted.
        attribute :restart
        validates :restart, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:always, false, :"on-failure", :"unless-stopped", nil] Container restart policy. Place quotes around I(no) option.
        attribute :restart_policy
        validates :restart_policy, inclusion: {:in=>[:always, false, :"on-failure", :"unless-stopped"], :message=>"%{value} needs to be :always, false, :\"on-failure\", :\"unless-stopped\""}, allow_nil: true

        # @return [Integer, nil] Use with restart policy to control maximum number of restart attempts.
        attribute :restart_retries
        validates :restart_retries, type: Integer

        # @return [Object, nil] Size of `/dev/shm`. The format is `<number><unit>`. `number` must be greater than `0`. Unit is optional and can be `b` (bytes), `k` (kilobytes), `m` (megabytes), or `g` (gigabytes).,Ommitting the unit defaults to bytes. If you omit the size entirely, the system uses `64m`.
        attribute :shm_size

        # @return [Object, nil] List of security options in the form of C("label:user:User")
        attribute :security_opts

        # @return [:absent, :present, :stopped, :started, nil] I(absent) - A container matching the specified name will be stopped and removed. Use force_kill to kill the container rather than stopping it. Use keep_volumes to retain volumes associated with the removed container.,I(present)" - Asserts the existence of a container matching the name and any provided configuration parameters. If no container matches the name, a container will be created. If a container matches the name but the provided configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and re-created with the requested config. Image version will be taken into account when comparing configuration. To ignore image version use the ignore_image option. Use the recreate option to force the re-creation of the matching container. Use force_kill to kill the container rather than stopping it. Use keep_volumes to retain volumes associated with a removed container.,I(started) - Asserts there is a running container matching the name and any provided configuration. If no container matches the name, a container will be created and started. If a container matching the name is found but the configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and a new container will be created with the requested configuration and started. Image version will be taken into account when comparing configuration. To ignore image version use the ignore_image option. Use recreate to always re-create a matching container, even if it is running. Use restart to force a matching container to be stopped and restarted. Use force_kill to kill a container rather than stopping it. Use keep_volumes to retain volumes associated with a removed container.,I(stopped) - Asserts that the container is first I(present), and then if the container is running moves it to a stopped state. Use force_kill to kill a container rather than stopping it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :stopped, :started], :message=>"%{value} needs to be :absent, :present, :stopped, :started"}, allow_nil: true

        # @return [Object, nil] Override default signal used to stop the container.
        attribute :stop_signal

        # @return [Object, nil] Number of seconds to wait for the container to stop before sending SIGKILL.
        attribute :stop_timeout

        # @return [Boolean, nil] If true, skip image verification.
        attribute :trust_image_content
        validates :trust_image_content, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Allocate a psuedo-TTY.
        attribute :tty
        validates :tty, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] List of ulimit options. A ulimit is specified as C(nofile:262144:262144)
        attribute :ulimits

        # @return [Object, nil] Sets the username or UID used and optionally the groupname or GID for the specified command.,Can be [ user | user:group | uid | uid:gid | user:gid | uid:group ]
        attribute :user

        # @return [Object, nil] Set the UTS namespace mode for the container.
        attribute :uts

        # @return [Array<String>, nil] List of volumes to mount within the container.,Use docker CLI-style syntax: C(/host:/container[:mode]),You can specify a read mode for the mount with either C(ro) or C(rw).,SELinux hosts can additionally use C(z) or C(Z) to use a shared or private label for the volume.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(String)

        # @return [String, nil] The container's volume driver.
        attribute :volume_driver
        validates :volume_driver, type: String

        # @return [Array<String>, nil] List of container names or Ids to get volumes from.
        attribute :volumes_from
        validates :volumes_from, type: TypeGeneric.new(String)
      end
    end
  end
end
