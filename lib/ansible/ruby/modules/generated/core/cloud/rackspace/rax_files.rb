# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_files < Base
        # @return [:yes, :no, nil] Optionally clear existing metadata when applying metadata to existing containers. Selecting this option is only appropriate when setting type=meta
        attribute :clear_meta
        validates :clear_meta, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] The container to use for container or metadata operations.
        attribute :container
        validates :container, presence: true

        # @return [Object] A hash of items to set as metadata values on a container
        attribute :meta

        # @return [Object] Used to set a container as private, removing it from the CDN.  B(Warning!) Private containers, if previously made public, can have live objects available until the TTL on cached objects expires
        attribute :private

        # @return [Object] Used to set a container as public, available via the Cloud Files CDN
        attribute :public

        # @return [String] Region to create an instance in
        attribute :region
        validates :region, type: String

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] In seconds, set a container-wide TTL for all objects cached on CDN edge nodes. Setting a TTL is only appropriate for containers that are public
        attribute :ttl

        # @return [:file, :meta, nil] Type of object to do work on, i.e. metadata object or a container object
        attribute :type
        validates :type, inclusion: {:in=>[:file, :meta], :message=>"%{value} needs to be :file, :meta"}, allow_nil: true

        # @return [Object] Sets an object to be presented as the HTTP error page when accessed by the CDN URL
        attribute :web_error

        # @return [Object] Sets an object to be presented as the HTTP index page when accessed by the CDN URL
        attribute :web_index
      end
    end
  end
end
