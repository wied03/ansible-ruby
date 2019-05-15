# frozen_string_literal: true
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

        # @return [Hash, nil] List of tags of Amazon EFS. Should be defined as dictionary
        attribute :tags
        validates :tags, type: Hash

        # @return [Array<String>, String, nil] list of targets on which to filter the returned results,result must match all of the specified targets, each of which can be a security group ID, a subnet ID or an IP address
        attribute :targets
        validates :targets, type: TypeGeneric.new(String)
      end
    end
  end
end
