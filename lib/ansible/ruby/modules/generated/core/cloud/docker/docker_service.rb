# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Docker_service < Base
        # @return [Object] Path to a directory containing a docker-compose.yml or docker-compose.yaml file.,Mutually exclusive with C(definition).,Required when no C(definition) is provided.
        attribute :project_src

        # @return [Object] Provide a project name. If not provided, the project name is taken from the basename of C(project_src).,Required when no C(definition) is provided.
        attribute :project_name

        # @return [Object] List of file names relative to C(project_src). Overrides docker-compose.yml or docker-compose.yaml.,Files are loaded and merged in the order given.
        attribute :files

        # @return [:absent, :present, nil] Desired state of the project.,Specifying I(present) is the same as running I(docker-compose up).,Specifying I(absent) is the same as running I(docker-compose down).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object] When C(state) is I(present) run I(docker-compose up) on a subset of services.
        attribute :services

        # @return [Object] When C(sate) is I(present) scale services. Provide a dictionary of key/value pairs where the key is the name of the service and the value is an integer count for the number of containers.
        attribute :scale

        # @return [TrueClass] When C(state) is I(present) specify whether or not to include linked services.
        attribute :dependencies
        validates :dependencies, type: TrueClass

        # @return [Object] Provide docker-compose yaml describing one or more services, networks and volumes.,Mutually exclusive with C(project_src) and C(project_files).
        attribute :definition

        # @return [Object] Whether or not to check the Docker daemon's hostname against the name provided in the client certificate.
        attribute :hostname_check

        # @return [:always, :never, :smart, nil] By default containers will be recreated when their configuration differs from the service definition.,Setting to I(never) ignores configuration differences and leaves existing containers unchanged.,Setting to I(always) forces recreation of all existing containers.
        attribute :recreate
        validates :recreate, inclusion: {:in=>[:always, :never, :smart], :message=>"%{value} needs to be :always, :never, :smart"}, allow_nil: true

        # @return [TrueClass] Whether or not to build images before starting containers.,Missing images will always be built.,If an image is present and C(build) is false, the image will not be built.,If an image is present and C(build) is true, the image will be built.
        attribute :build
        validates :build, type: TrueClass

        # @return [Object] Use with state I(absent) to remove the all images or only local images.
        attribute :remove_images

        # @return [Object] Use with state I(absent) to remove data volumes.
        attribute :remove_volumes

        # @return [Object] Use with state I(present) to leave the containers in an exited or non-running state.
        attribute :stopped

        # @return [Object] Use with state I(present) to restart all containers.
        attribute :restarted

        # @return [String] Include I(actions) in the return values.
        attribute :debug
        validates :debug, type: String
      end
    end
  end
end
