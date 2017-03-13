# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Consumes docker compose to start, shutdown and scale services.
      # Works with compose versions 1 and 2.
      # Compose can be read from a docker-compose.yml (or .yaml) file or inline using the C(definition) option.
      # See the examples for more details.
      # Supports check mode.
      class Docker_service < Base
        # @return [Object, nil] Path to a directory containing a docker-compose.yml or docker-compose.yaml file.,Mutually exclusive with C(definition).,Required when no C(definition) is provided.
        attribute :project_src

        # @return [Object, nil] Provide a project name. If not provided, the project name is taken from the basename of C(project_src).,Required when no C(definition) is provided.
        attribute :project_name

        # @return [Object, nil] List of file names relative to C(project_src). Overrides docker-compose.yml or docker-compose.yaml.,Files are loaded and merged in the order given.
        attribute :files

        # @return [:absent, :present, nil] Desired state of the project.,Specifying I(present) is the same as running I(docker-compose up).,Specifying I(absent) is the same as running I(docker-compose down).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] When C(state) is I(present) run I(docker-compose up) on a subset of services.
        attribute :services

        # @return [Object, nil] When C(state) is I(present) scale services. Provide a dictionary of key/value pairs where the key is the name of the service and the value is an integer count for the number of containers.
        attribute :scale

        # @return [Boolean, nil] When C(state) is I(present) specify whether or not to include linked services.
        attribute :dependencies
        validates :dependencies, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Provide docker-compose yaml describing one or more services, networks and volumes.,Mutually exclusive with C(project_src) and C(files).
        attribute :definition

        # @return [Boolean, nil] Whether or not to check the Docker daemon's hostname against the name provided in the client certificate.
        attribute :hostname_check
        validates :hostname_check, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:always, :never, :smart, nil] By default containers will be recreated when their configuration differs from the service definition.,Setting to I(never) ignores configuration differences and leaves existing containers unchanged.,Setting to I(always) forces recreation of all existing containers.
        attribute :recreate
        validates :recreate, inclusion: {:in=>[:always, :never, :smart], :message=>"%{value} needs to be :always, :never, :smart"}, allow_nil: true

        # @return [Boolean, nil] Use with state I(present) to always build images prior to starting the application.,Same as running docker-compose build with the pull option.,Images will only be rebuilt if Docker detects a change in the Dockerfile or build directory contents.,Use the C(nocache) option to ignore the image cache when performing the build.,If an existing image is replaced, services using the image will be recreated unless C(recreate) is I(never).
        attribute :build
        validates :build, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with state I(present) to always pull images prior to starting the application.,Same as running docker-compose pull.,When a new image is pulled, services using the image will be recreated unless C(recreate) is I(never).
        attribute :pull
        validates :pull, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with the build option to ignore the cache during the image build process.
        attribute :nocache
        validates :nocache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Use with state I(absent) to remove the all images or only local images.
        attribute :remove_images

        # @return [Boolean, nil] Use with state I(absent) to remove data volumes.
        attribute :remove_volumes
        validates :remove_volumes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with state I(present) to leave the containers in an exited or non-running state.
        attribute :stopped
        validates :stopped, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with state I(present) to restart all containers.
        attribute :restarted
        validates :restarted, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Include I(actions) in the return values.
        attribute :debug
        validates :debug, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
