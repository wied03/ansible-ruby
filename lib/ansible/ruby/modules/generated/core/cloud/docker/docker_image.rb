# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Docker_image < Base
        # @return [String] Use with state 'present' to archive an image to a .tar file.
        attribute :archive_path
        validates :archive_path, type: String

        # @return [String] Use with state 'present' to provide an alternate name for the Dockerfile to use when building an image.
        attribute :dockerfile
        validates :dockerfile, type: String

        # @return [Object] Use with absent state to un-tag and remove all images matching the specified name. Use with states 'present' and 'tagged' to take action even when an image already exists.
        attribute :force

        # @return [Object] Timeout for HTTP requests during the image build operation. Provide a positive integer value for the number of seconds.
        attribute :http_timeout

        # @return [String] Image name. Name format will be one of: name, repository/name, registry_server:port/name. When pushing or pulling an image the name can optionally include the tag by appending ':tag_name'.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Use with state 'present' to build an image. Will be the path to a directory containing the context and Dockerfile for building an image.
        attribute :path
        validates :path, type: String

        # @return [TrueClass] When building an image downloads any updates to the FROM image in Dockerfile.
        attribute :pull
        validates :pull, type: TrueClass

        # @return [TrueClass] Remove intermediate containers after build.
        attribute :rm
        validates :rm, type: TrueClass

        # @return [Object] Do not use cache when building an image.
        attribute :nocache

        # @return [String] Full path to a repository. Use with state 'present' to tag the image into the repository.
        attribute :repository
        validates :repository, type: String

        # @return [:absent, :present, :"build (DEPRECATED)", nil] Make assertions about the state of an image.,When 'absent' an image will be removed. Use the force option to un-tag and remove all images matching the provided name.,When 'present' check if an image exists using the provided name and tag. If the image is not found or the force option is used, the image will either be pulled, built or loaded. By default the image will be pulled from Docker Hub. To build the image, provide a path value set to a directory containing a context and Dockerfile. To load an image, specify load_path to provide a path to an archive file. To tag an image to a repository, provide a repository path. If the name contains a repository path, it will be pushed.,NOTE: 'build' is DEPRECATED. Specifying 'build' will behave the same as 'present'.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :"build (DEPRECATED)"], :message=>"%{value} needs to be :absent, :present, :\"build (DEPRECATED)\""}, allow_nil: true

        # @return [String] Used to select an image when pulling. Will be added to the image when pushing, tagging or building. Defaults to 'latest' when pulling an image.
        attribute :tag
        validates :tag, type: String

        # @return [Object] A dictionary of limits applied to each container created by the build process.
        attribute :container_limits

        # @return [false, :encrypt, :verify, nil] DEPRECATED. Whether to use tls to connect to the docker server. Set to 'no' when TLS will not be used. Set to 'encrypt' to use TLS. And set to 'verify' to use TLS and verify that the server's certificate is valid for the server. NOTE: If you specify this option, it will set the value of the tls or tls_verify parameters.
        attribute :use_tls
        validates :use_tls, inclusion: {:in=>[false, :encrypt, :verify], :message=>"%{value} needs to be false, :encrypt, :verify"}, allow_nil: true
      end
    end
  end
end
