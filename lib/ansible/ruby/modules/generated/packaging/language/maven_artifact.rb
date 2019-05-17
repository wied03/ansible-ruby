# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Downloads an artifact from a maven repository given the maven coordinates provided to the module.
      # Can retrieve snapshots or release versions of the artifact and will resolve the latest available version if one is not available.
      class Maven_artifact < Base
        # @return [String] The Maven groupId coordinate
        attribute :group_id
        validates :group_id, presence: true, type: String

        # @return [String] The maven artifactId coordinate
        attribute :artifact_id
        validates :artifact_id, presence: true, type: String

        # @return [String, nil] The maven version coordinate
        attribute :version
        validates :version, type: String

        # @return [Object, nil] The maven classifier coordinate
        attribute :classifier

        # @return [String, nil] The maven type/extension coordinate
        attribute :extension
        validates :extension, type: String

        # @return [String, nil] The URL of the Maven Repository to download from.,Use s3://... if the repository is hosted on Amazon S3, added in version 2.2.,Use file://... if the repository is local, added in version 2.6
        attribute :repository_url
        validates :repository_url, type: String

        # @return [String, nil] The username to authenticate as to the Maven Repository. Use AWS secret key of the repository is hosted on S3
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password to authenticate with to the Maven Repository. Use AWS secret access key of the repository is hosted on S3
        attribute :password
        validates :password, type: String

        # @return [String] The path where the artifact should be written to,If file mode or ownerships are specified and destination path already exists, they affect the downloaded file
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:present, :absent, nil] The desired state of the artifact
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Specifies a timeout in seconds for the connection attempt
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), the downloaded artifact's name is preserved, i.e the version number remains part of it.,This option only has effect when C(dest) is a directory and C(version) is set to C(latest).
        attribute :keep_name
        validates :keep_name, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:never, :download, :change, :always, nil] If C(never), the md5 checksum will never be downloaded and verified.,If C(download), the md5 checksum will be downloaded and verified only after artifact download. This is the default.,If C(change), the md5 checksum will be downloaded and verified if the destination already exist, to verify if they are identical. This was the behaviour before 2.6. Since it downloads the md5 before (maybe) downloading the artifact, and since some repository software, when acting as a proxy/cache, return a 404 error if the artifact has not been cached yet, it may fail unexpectedly. If you still need it, you should consider using C(always) instead - if you deal with a checksum, it is better to use it to verify integrity after download.,C(always) combines C(download) and C(change).
        attribute :verify_checksum
        validates :verify_checksum, inclusion: {:in=>[:never, :download, :change, :always], :message=>"%{value} needs to be :never, :download, :change, :always"}, allow_nil: true
      end
    end
  end
end
