# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Batch Job Definitions. It is idempotent and supports "Check" mode.  Use module M(aws_batch_compute_environment) to manage the compute environment, M(aws_batch_job_queue) to manage job queues, M(aws_batch_job_definition) to manage job definitions.
      class Aws_batch_job_definition < Base
        # @return [Object, nil] The arn for the job definition
        attribute :job_definition_arn

        # @return [String] The name for the job definition
        attribute :job_definition_name
        validates :job_definition_name, presence: true, type: String

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The type of job definition
        attribute :type
        validates :type, presence: true, type: String

        # @return [Hash, nil] Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a SubmitJob request override any corresponding parameter defaults from the job definition.
        attribute :parameters
        validates :parameters, type: Hash

        # @return [String, nil] The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with `` repository-url /image <colon>tag ``. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to Image in the Create a container section of the Docker Remote API and the IMAGE parameter of docker run.
        attribute :image
        validates :image, type: String

        # @return [Integer, nil] The number of vCPUs reserved for the container. This parameter maps to CpuShares in the Create a container section of the Docker Remote API and the --cpu-shares option to docker run. Each vCPU is equivalent to 1,024 CPU shares.
        attribute :vcpus
        validates :vcpus, type: Integer

        # @return [Integer, nil] The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to Memory in the Create a container section of the Docker Remote API and the --memory option to docker run.
        attribute :memory
        validates :memory, type: Integer

        # @return [Array<String>, String, nil] The command that is passed to the container. This parameter maps to Cmd in the Create a container section of the Docker Remote API and the COMMAND parameter to docker run. For more information, see https://docs.docker.com/engine/reference/builder/#cmd.
        attribute :command
        validates :command, type: TypeGeneric.new(String)

        # @return [String, nil] The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.
        attribute :job_role_arn
        validates :job_role_arn, type: String

        # @return [Object, nil] A list of data volumes used in a job. List of dictionaries.
        attribute :volumes

        # @return [Object, nil] The environment variables to pass to a container. This parameter maps to Env in the Create a container section of the Docker Remote API and the --env option to docker run. List of dictionaries.
        attribute :environment

        # @return [Object, nil] The mount points for data volumes in your container. This parameter maps to Volumes in the Create a container section of the Docker Remote API and the --volume option to docker run. List of dictionaries.
        attribute :mount_points

        # @return [Object, nil] When this parameter is true, the container is given read-only access to its root file system. This parameter maps to ReadonlyRootfs in the Create a container section of the Docker Remote API and the --read-only option to docker run.
        attribute :readonly_root_filesystem

        # @return [Object, nil] When this parameter is true, the container is given elevated privileges on the host container instance (similar to the root user). This parameter maps to Privileged in the Create a container section of the Docker Remote API and the --privileged option to docker run.
        attribute :privileged

        # @return [Object, nil] A list of ulimits to set in the container. This parameter maps to Ulimits in the Create a container section of the Docker Remote API and the --ulimit option to docker run. List of dictionaries.
        attribute :ulimits

        # @return [Object, nil] The user name to use inside the container. This parameter maps to User in the Create a container section of the Docker Remote API and the --user option to docker run.
        attribute :user

        # @return [Integer, nil] Retry strategy - The number of times to move a job to the RUNNABLE status. You may specify between 1 and 10 attempts. If attempts is greater than one, the job is retried if it fails until it has moved to RUNNABLE that many times.
        attribute :attempts
        validates :attempts, type: Integer
      end
    end
  end
end
