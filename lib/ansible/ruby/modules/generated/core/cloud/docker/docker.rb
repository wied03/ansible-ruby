# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Docker < Base
        # @return [Integer, nil] Number of matching containers that should be in the desired state.
        attribute :count
        validates :count, type: Integer

        # @return [String] Container image used to match and launch containers.
        attribute :image
        validates :image, presence: true, type: String

        # @return [:missing, :always, nil] Control when container images are updated from the C(docker_url) registry. If "missing," images will be pulled only when missing from the host; if '"always," the registry will be checked for a newer version of the image' each time the task executes.
        attribute :pull
        validates :pull, inclusion: {:in=>[:missing, :always], :message=>"%{value} needs to be :missing, :always"}, allow_nil: true

        # @return [Object, nil] Corresponds to ``--entrypoint`` option of ``docker run`` command and ``ENTRYPOINT`` directive of Dockerfile. Used to match and launch containers.
        attribute :entrypoint

        # @return [String, nil] Command used to match and launch containers.
        attribute :command
        validates :command, type: String

        # @return [String, nil] Name used to match and uniquely name launched containers. Explicit names are used to uniquely identify a single container or to link among containers. Mutually exclusive with a "count" other than "1".
        attribute :name
        validates :name, type: String

        # @return [Array, nil] List containing private to public port mapping specification. Use docker 'CLI-style syntax: C(8000), C(9000:8000), or C(0.0.0.0:9000:8000)' where 8000 is a container port, 9000 is a host port, and 0.0.0.0 is - a host interface. The container ports need to be exposed either in the Dockerfile or via the C(expose) option.
        attribute :ports
        validates :ports, type: Array

        # @return [Array, nil] List of additional container ports to expose for port mappings or links. If the port is already exposed using EXPOSE in a Dockerfile, you don't need to expose it again.
        attribute :expose
        validates :expose, type: Array

        # @return [Object, nil] Publish all exposed ports to the host interfaces.
        attribute :publish_all_ports

        # @return [Array, nil] List of volumes to mount within the container,Use docker CLI-style syntax: C(/host:/container[:mode]),You can specify a read mode for the mount with either C(ro) or C(rw). Starting at version 2.1, SELinux hosts can additionally use C(z) or C(Z) mount options to use a shared or private label for the volume.
        attribute :volumes
        validates :volumes, type: Array

        # @return [Array, nil] List of names of containers to mount volumes from.
        attribute :volumes_from
        validates :volumes_from, type: Array

        # @return [Array, nil] List of other containers to link within this container with an optional,alias. Use docker CLI-style syntax: C(redis:myredis).
        attribute :links
        validates :links, type: Array

        # @return [Array, nil] List of host devices to expose to container
        attribute :devices
        validates :devices, type: Array

        # @return [:"json-file", :none, :syslog, :journald, :gelf, :fluentd, :awslogs, nil] You can specify a different logging driver for the container than for the daemon. "json-file" Default logging driver for Docker. Writes JSON messages to file. docker logs command is available only for this logging driver. "none" disables any logging for the container. "syslog" Syslog logging driver for Docker. Writes log messages to syslog. docker logs command is not available for this logging driver. "journald" Journald logging driver for Docker. Writes log messages to "journald". "gelf" Graylog Extended Log Format (GELF) logging driver for Docker. Writes log messages to a GELF endpoint likeGraylog or Logstash. "fluentd" Fluentd logging driver for Docker. Writes log messages to "fluentd" (forward input). "awslogs" (added in 2.1) Awslogs logging driver for Docker. Writes log messages to AWS Cloudwatch Logs. If not defined explicitly, the Docker daemon's default ("json-file") will apply. Requires docker >= 1.6.0.
        attribute :log_driver
        validates :log_driver, inclusion: {:in=>[:"json-file", :none, :syslog, :journald, :gelf, :fluentd, :awslogs], :message=>"%{value} needs to be :\"json-file\", :none, :syslog, :journald, :gelf, :fluentd, :awslogs"}, allow_nil: true

        # @return [Hash, nil] Additional options to pass to the logging driver selected above. See Docker `log-driver <https://docs.docker.com/reference/logging/overview/>` documentation for more information. Requires docker >=1.7.0.
        attribute :log_opt
        validates :log_opt, type: Hash

        # @return [Integer, nil] RAM allocated to the container as a number of bytes or as a human-readable string like "512MB". Leave as "0" to specify no limit.
        attribute :memory_limit
        validates :memory_limit, type: Integer

        # @return [String, nil] URL of the host running the docker daemon. This will default to the env var DOCKER_HOST if unspecified.
        attribute :docker_url
        validates :docker_url, type: String

        # @return [:no, :encrypt, :verify, nil] Whether to use tls to connect to the docker server.  "no" means not to use tls (and ignore any other tls related parameters). "encrypt" means to use tls to encrypt the connection to the server.  "verify" means to also verify that the server's certificate is valid for the server (this both verifies the certificate against the CA and that the certificate was issued for that host. If this is unspecified, tls will only be used if one of the other tls options require it.
        attribute :use_tls
        validates :use_tls, inclusion: {:in=>[:no, :encrypt, :verify], :message=>"%{value} needs to be :no, :encrypt, :verify"}, allow_nil: true

        # @return [String, nil] Path to the PEM-encoded certificate used to authenticate docker client. If specified tls_client_key must be valid
        attribute :tls_client_cert
        validates :tls_client_cert, type: String

        # @return [String, nil] Path to the PEM-encoded key used to authenticate docker client. If specified tls_client_cert must be valid
        attribute :tls_client_key
        validates :tls_client_key, type: String

        # @return [String, nil] Path to a PEM-encoded certificate authority to secure the Docker connection. This has no effect if use_tls is encrypt.
        attribute :tls_ca_cert
        validates :tls_ca_cert, type: String

        # @return [String, nil] A hostname to check matches what's supplied in the docker server's certificate.  If unspecified, the hostname is taken from the docker_url.
        attribute :tls_hostname
        validates :tls_hostname, type: String

        # @return [String, nil] Remote API version to use. This defaults to the current default as specified by docker-py.
        attribute :docker_api_version
        validates :docker_api_version, type: String

        # @return [Object, nil] Username or UID to use within the container
        attribute :docker_user

        # @return [Object, nil] Remote API username.
        attribute :username

        # @return [Object, nil] Remote API password.
        attribute :password

        # @return [Object, nil] Remote API email.
        attribute :email

        # @return [Object, nil] Container hostname.
        attribute :hostname

        # @return [Object, nil] Container domain name.
        attribute :domainname

        # @return [Hash, nil] Pass a dict of environment variables to the container.
        attribute :env
        validates :env, type: Hash

        # @return [Object, nil] Pass in a path to a file with environment variable (FOO=BAR). If a key value is present in both explicitly presented (i.e. as 'env') and in the environment file, the explicit value will override. Requires docker-py >= 1.4.0.
        attribute :env_file

        # @return [Object, nil] List of custom DNS servers for the container.
        attribute :dns

        # @return [TrueClass, nil] Enable detached mode to leave the container running in background. If disabled, fail unless the process exits cleanly.
        attribute :detach
        validates :detach, type: TrueClass

        # @return [String, nil] With the state "killed", you can alter the signal sent to the container.
        attribute :signal
        validates :signal, type: String

        # @return [:present, :started, :reloaded, :restarted, :stopped, :killed, :absent, nil] Assert the container's desired state. "present" only asserts that the matching containers exist. "started" asserts that the matching containers both exist and are running, but takes no action if any configuration has changed. "reloaded" (added in Ansible 1.9) asserts that all matching containers are running and restarts any that have any images or configuration out of date. "restarted" unconditionally restarts (or starts) the matching containers. "stopped" and '"killed" stop and kill all matching containers. "absent" stops and then' removes any matching containers.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :started, :reloaded, :restarted, :stopped, :killed, :absent], :message=>"%{value} needs to be :present, :started, :reloaded, :restarted, :stopped, :killed, :absent"}, allow_nil: true

        # @return [Object, nil] Whether the container should run in privileged mode or not.
        attribute :privileged

        # @return [Object, nil] LXC configuration parameters, such as C(lxc.aa_profile:unconfined).
        attribute :lxc_conf

        # @return [Object, nil] Keep stdin open after a container is launched.
        attribute :stdin_open

        # @return [Object, nil] Allocate a pseudo-tty within the container.
        attribute :tty

        # @return [Object, nil] Network mode for the launched container: bridge, none, container:<name|id>,or host. Requires docker >= 0.11.
        attribute :net

        # @return [String, nil] Set the PID namespace mode for the container (currently only supports 'host'). Requires docker-py >= 1.0.0 and docker >= 1.5.0
        attribute :pid
        validates :pid, type: String

        # @return [String, nil] Remote registry URL to pull images from.
        attribute :registry
        validates :registry, type: String

        # @return [Object, nil] Mount the container's root filesystem as read only
        attribute :read_only

        # @return [:no, :"on-failure", :always, :"unless-stopped", nil] Container restart policy.,The 'unless-stopped' choice is only available starting in Ansible 2.1 and for Docker 1.9 and above.
        attribute :restart_policy
        validates :restart_policy, inclusion: {:in=>[:no, :"on-failure", :always, :"unless-stopped"], :message=>"%{value} needs to be :no, :\"on-failure\", :always, :\"unless-stopped\""}, allow_nil: true

        # @return [Integer, nil] Maximum number of times to restart a container. Leave as "0" for unlimited retries.
        attribute :restart_policy_retry
        validates :restart_policy_retry, type: Integer

        # @return [Hash, nil] Dict of custom host-to-IP mappings to be defined in the container
        attribute :extra_hosts
        validates :extra_hosts, type: Hash

        # @return [Object, nil] Use insecure private registry by HTTP instead of HTTPS. Needed for docker-py >= 0.5.0.
        attribute :insecure_registry

        # @return [Object, nil] CPUs in which to allow execution. Requires docker-py >= 0.6.0.
        attribute :cpu_set

        # @return [Object, nil] Add capabilities for the container. Requires docker-py >= 0.5.0.
        attribute :cap_add

        # @return [Object, nil] Drop capabilities for the container. Requires docker-py >= 0.5.0.
        attribute :cap_drop

        # @return [Object, nil] Set container labels. Requires docker >= 1.6 and docker-py >= 1.2.0.
        attribute :labels

        # @return [Integer, nil] How many seconds to wait for the container to stop before killing it.
        attribute :stop_timeout
        validates :stop_timeout, type: Integer

        # @return [Integer, nil] Docker daemon response timeout in seconds.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] CPU shares (relative weight). Requires docker-py >= 0.6.0.
        attribute :cpu_shares
        validates :cpu_shares, type: Integer

        # @return [Object, nil] ulimits, list ulimits with name, soft and optionally hard limit separated by colons. e.g. nofile:1024:2048 Requires docker-py >= 1.2.0 and docker >= 1.6.0
        attribute :ulimits
      end
    end
  end
end
