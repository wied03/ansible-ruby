# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Launches/updates/deletes AWS CloudFormation Stack Sets
      class Cloudformation_stack_set < Base
        # @return [String] name of the cloudformation stack set
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A description of what this stack set creates
        attribute :description
        validates :description, type: String

        # @return [Object, nil] A list of hashes of all the template variables for the stack. The value can be a string or a dict.,Dict can be used to set additional template parameter attributes like UsePreviousValue (see example).
        attribute :parameters

        # @return [:present, :absent, nil] If state is "present", stack will be created.  If state is "present" and if stack exists and template has changed, it will be updated. If state is "absent", stack will be removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The local path of the cloudformation template.,This must be the full path to the file, relative to the working directory. If using roles this may look like "roles/cloudformation/files/cloudformation-example.json".,If 'state' is 'present' and the stack does not exist yet, either 'template', 'template_body' or 'template_url' must be specified (but only one of them). If 'state' is present, the stack does exist, and neither 'template', 'template_body' nor 'template_url' are specified, the previous template will be reused.
        attribute :template

        # @return [Object, nil] Template body. Use this to pass in the actual body of the Cloudformation template.,If 'state' is 'present' and the stack does not exist yet, either 'template', 'template_body' or 'template_url' must be specified (but only one of them). If 'state' is present, the stack does exist, and neither 'template', 'template_body' nor 'template_url' are specified, the previous template will be reused.
        attribute :template_body

        # @return [String, nil] Location of file containing the template body. The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack.,If 'state' is 'present' and the stack does not exist yet, either 'template', 'template_body' or 'template_url' must be specified (but only one of them). If 'state' is present, the stack does exist, and neither 'template', 'template_body' nor 'template_url' are specified, the previous template will be reused.
        attribute :template_url
        validates :template_url, type: String

        # @return [Boolean, nil] Only applicable when I(state=absent). Sets whether, when deleting a stack set, the stack instances should also be deleted.,By default, instances will be deleted. Set to 'no' or 'false' to keep stacks when stack set is deleted.
        attribute :purge_stacks
        validates :purge_stacks, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether or not to wait for stack operation to complete. This includes waiting for stack instances to reach UPDATE_COMPLETE status.,If you choose not to wait, this module will not notify when stack operations fail because it will not wait for them to finish.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long to wait (in seconds) for stacks to complete create/update/delete operations.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:CAPABILITY_IAM, :CAPABILITY_NAMED_IAM, nil] Capabilities allow stacks to create and modify IAM resources, which may include adding users or roles.,Currently the only available values are 'CAPABILITY_IAM' and 'CAPABILITY_NAMED_IAM'. Either or both may be provided.,The following resources require that one or both of these parameters is specified: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::IAM::UserToGroupAddition\r\n
        attribute :capabilities
        validates :capabilities, inclusion: {:in=>[:CAPABILITY_IAM, :CAPABILITY_NAMED_IAM], :message=>"%{value} needs to be :CAPABILITY_IAM, :CAPABILITY_NAMED_IAM"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of AWS regions to create instances of a stack in. The I(region) parameter chooses where the Stack Set is created, and I(regions) specifies the region for stack instances.,At least one region must be specified to create a stack set. On updates, if fewer regions are specified only the specified regions will have their stack instances updated.
        attribute :regions
        validates :regions, type: TypeGeneric.new(String)

        # @return [Array<Integer>, Integer, nil] A list of AWS accounts in which to create instance of CloudFormation stacks.,At least one region must be specified to create a stack set. On updates, if fewer regions are specified only the specified regions will have their stack instances updated.
        attribute :accounts
        validates :accounts, type: TypeGeneric.new(Integer)

        # @return [Object, nil] ARN of the administration role, meaning the role that CloudFormation Stack Sets use to assume the roles in your child accounts.,This defaults to I(arn:aws:iam::{{ account ID }}:role/AWSCloudFormationStackSetAdministrationRole) where I({{ account ID }}) is replaced with the account number of the current IAM role/user/STS credentials.
        attribute :administration_role_arn

        # @return [Object, nil] ARN of the execution role, meaning the role that CloudFormation Stack Sets assumes in your child accounts.,This MUST NOT be an ARN, and the roles must exist in each child account specified.,The default name for the execution role is I(AWSCloudFormationStackSetExecutionRole)
        attribute :execution_role_name

        # @return [Hash, nil] Dictionary of tags to associate with stack and its resources during stack creation. Can be updated later, updating tags removes previous entries.
        attribute :tags
        validates :tags, type: Hash

        # @return [Object, nil] Settings to change what is considered "failed" when running stack instance updates, and how many to do at a time.
        attribute :failure_tolerance
      end
    end
  end
end
