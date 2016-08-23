# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Maven_artifact < Base
        # @return [String] The Maven groupId coordinate
        attribute :group_id
        validates :group_id, presence: true, type: String

        # @return [String] The maven artifactId coordinate
        attribute :artifact_id
        validates :artifact_id, presence: true, type: String

        # @return [String] The maven version coordinate
        attribute :version
        validates :version, type: String

        # @return [Object] The maven classifier coordinate
        attribute :classifier

        # @return [String] The maven type/extension coordinate
        attribute :extension
        validates :extension, type: String

        # @return [String] The URL of the Maven Repository to download from
        attribute :repository_url
        validates :repository_url, type: String

        # @return [String] The username to authenticate as to the Maven Repository
        attribute :username
        validates :username, type: String

        # @return [String] The password to authenticate with to the Maven Repository
        attribute :password
        validates :password, type: String

        # @return [String] The path where the artifact should be written to
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] The desired state of the artifact
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end