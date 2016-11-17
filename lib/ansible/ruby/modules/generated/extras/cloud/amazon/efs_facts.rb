# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module searches Amazon EFS file systems
      class Efs_facts < Base
        # @return [String, nil] Creation Token of Amazon EFS file system.
        attribute :name
        validates :name, type: String

        # @return [String, nil] ID of Amazon EFS.
        attribute :id
        validates :id, type: String

        # @return [Hash, nil] List of tags of Amazon EFS. Should be defined as dictionary\r\n
        attribute :tags
        validates :tags, type: Hash

        # @return [Array<String>, String, nil] List of mounted targets. It should be a list of dictionaries, every dictionary should include next attributes:\r\n    - SubnetId - Mandatory. The ID of the subnet to add the mount target in.\r\n    - IpAddress - Optional. A valid IPv4 address within the address range of the specified subnet.\r\n    - SecurityGroups - Optional. List of security group IDs, of the form "sg-xxxxxxxx". These must be for the same VPC as subnet specified.\r\n
        attribute :targets
        validates :targets, type: TypeGeneric.new(String)
      end
    end
  end
end
