# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage s3 buckets in AWS
      class S3_bucket < Base
        # @return [Boolean, nil] When trying to delete a bucket, delete all keys in the bucket first (an s3 bucket must be empty for a successful deletion)
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the s3 bucket
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The JSON policy as a string.
        attribute :policy
        validates :policy, type: String

        # @return [Object, nil] S3 URL endpoint for usage with Eucalypus, fakes3, etc.  Otherwise assumes AWS
        attribute :s3_url

        # @return [Boolean, nil] With Requester Pays buckets, the requester instead of the bucket owner pays the cost of the request and the data download from the bucket.
        attribute :requester_pays
        validates :requester_pays, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Create or remove the s3 bucket
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash, nil] tags dict to apply to bucket
        attribute :tags
        validates :tags, type: Hash

        # @return [Boolean, nil] Whether versioning is enabled or disabled (note that once versioning is enabled, it can only be suspended)
        attribute :versioning
        validates :versioning, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
