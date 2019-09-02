# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Build, load or pull an image, making the image available for creating containers. Also supports tagging an image into a repository and archiving an image to a .tar file.
      class Docker_image < Base
        # @return [String, nil] Use with state C(present) to archive an image to a .tar file.
        attribute :archive_path
        validates :archive_path, type: String

        # @return [String, nil] Use with state C(present) to load an image from a .tar file.
        attribute :load_path
        validates :load_path, type: String

        # @return [Object, nil] Use with state C(present) to provide an alternate name for the Dockerfile to use when building an image.
        attribute :dockerfile

        # @return [Symbol, nil] Use with state I(absent) to un-tag and remove all images matching the specified name. Use with state C(present) to build, load or pull an image when the image already exists.
        attribute :force
        validates :force, type: Symbol

        # @return [Object, nil] Timeout for HTTP requests during the image build operation. Provide a positive integer value for the number of seconds.
        attribute :http_timeout

        # @return [String] Image name. Name format will be one of: name, repository/name, registry_server:port/name. When pushing or pulling an image the name can optionally include the tag by appending ':tag_name'.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Use with state 'present' to build an image. Will be the path to a directory containing the context and Dockerfile for building an image.
        attribute :path
        validates :path, type: String

        # @return [Boolean, nil] When building an image downloads any updates to the FROM image in Dockerfile.
        attribute :pull
        validates :pull, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Push the image to the registry. Specify the registry as part of the I(name) or I(repository) parameter.
        attribute :push
        validates :push, type: Symbol

        # @return [Boolean, nil] Remove intermediate containers after build.
        attribute :rm
        validates :rm, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Do not use cache when building an image.
        attribute :nocache
        validates :nocache, type: Symbol

        # @return [String, nil] Full path to a repository. Use with state C(present) to tag the image into the repository. Expects format I(repository:tag). If no tag is provided, will use the value of the C(tag) parameter or I(latest).
        attribute :repository
        validates :repository, type: String

        # @return [:absent, :present, :build, nil] Make assertions about the state of an image.,When C(absent) an image will be removed. Use the force option to un-tag and remove all images matching the provided name.,When C(present) check if an image exists using the provided name and tag. If the image is not found or the force option is used, the image will either be pulled, built or loaded. By default the image will be pulled from Docker Hub. To build the image, provide a path value set to a directory containing a context and Dockerfile. To load an image, specify load_path to provide a path to an archive file. To tag an image to a repository, provide a repository path. If the name contains a repository path, it will be pushed.,NOTE: C(build) is DEPRECATED and will be removed in release 2.3. Specifying C(build) will behave the same as C(present).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :build], :message=>"%{value} needs to be :absent, :present, :build"}, allow_nil: true

        # @return [String, nil] Used to select an image when pulling. Will be added to the image when pushing, tagging or building. Defaults to I(latest).,If C(name) parameter format is I(name:tag), then tag value from C(name) will take precedence.
        attribute :tag
        validates :tag, type: String

        # @return [Hash, nil] Provide a dictionary of C(key:value) build arguments that map to Dockerfile ARG directive.,Docker expects the value to be a string. For convenience any non-string values will be converted to strings.,Requires Docker API >= 1.21 and docker-py >= 1.7.0.
        attribute :buildargs
        validates :buildargs, type: Hash

        # @return [Object, nil] A dictionary of limits applied to each container created by the build process.
        attribute :container_limits

        # @return [:no, :encrypt, :verify, nil] DEPRECATED. Whether to use tls to connect to the docker server. Set to C(no) when TLS will not be used. Set to C(encrypt) to use TLS. And set to C(verify) to use TLS and verify that the server's certificate is valid for the server. NOTE: If you specify this option, it will set the value of the tls or tls_verify parameters.
        attribute :use_tls
        validates :use_tls, expression_inclusion: {:in=>[:no, :encrypt, :verify], :message=>"%{value} needs to be :no, :encrypt, :verify"}, allow_nil: true
      end
    end
  end
end
