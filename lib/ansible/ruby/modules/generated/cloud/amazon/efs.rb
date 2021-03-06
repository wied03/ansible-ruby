# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module allows create, search and destroy Amazon EFS file systems
      class Efs < Base
        # @return [:yes, :no, nil] A boolean value that, if true, creates an encrypted file system. This can not be modfied after the file system is created.
        attribute :encrypt
        validates :encrypt, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The id of the AWS KMS CMK that will be used to protect the encrypted file system. This parameter is only required if you want to use a non-default CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. The key id can be Key ID, Key ID ARN, Key Alias or Key Alias ARN.
        attribute :kms_key_id

        # @return [:yes, :no, nil] If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.
        attribute :purge_tags
        validates :purge_tags, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Allows to create, search and destroy Amazon EFS file system
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Creation Token of Amazon EFS file system. Required for create and update. Either name or ID required for delete.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] ID of Amazon EFS. Either name or ID required for delete.
        attribute :id

        # @return [:general_purpose, :max_io, nil] File system's performance mode to use. Only takes effect during creation.
        attribute :performance_mode
        validates :performance_mode, expression_inclusion: {:in=>[:general_purpose, :max_io], :message=>"%{value} needs to be :general_purpose, :max_io"}, allow_nil: true

        # @return [Hash, nil] List of tags of Amazon EFS. Should be defined as dictionary In case of 'present' state with list of tags and existing EFS (matched by 'name'), tags of EFS will be replaced with provided data.
        attribute :tags
        validates :tags, type: Hash

        # @return [Array<Hash>, Hash, nil] List of mounted targets. It should be a list of dictionaries, every dictionary should include next attributes: - subnet_id - Mandatory. The ID of the subnet to add the mount target in. - ip_address - Optional. A valid IPv4 address within the address range of the specified subnet. - security_groups - Optional. List of security group IDs, of the form 'sg-xxxxxxxx'. These must be for the same VPC as subnet specified This data may be modified for existing EFS using state 'present' and new list of mount targets.
        attribute :targets
        validates :targets, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] In case of 'present' state should wait for EFS 'available' life cycle state (of course, if current state not 'deleting' or 'deleted') In case of 'absent' state should wait for EFS 'deleted' life cycle state
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long the module should wait (in seconds) for desired state before returning. Zero means wait as long as necessary.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
