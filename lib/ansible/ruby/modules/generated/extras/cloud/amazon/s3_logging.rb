# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage logging facility of an s3 bucket in AWS
      class S3_logging < Base
        # @return [String] Name of the s3 bucket.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Enable or disable logging.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The bucket to log to. Required when state=present.
        attribute :target_bucket
        validates :target_bucket, type: String

        # @return [String, nil] The prefix that should be prepended to the generated log files written to the target_bucket.
        attribute :target_prefix
        validates :target_prefix, type: String
      end
    end
  end
end
