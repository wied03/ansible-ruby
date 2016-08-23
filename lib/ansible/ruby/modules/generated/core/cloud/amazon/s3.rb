# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class S3 < Base
        # @return [Object, nil] AWS access key id. If not set then the value of the AWS_ACCESS_KEY environment variable is used.
        attribute :aws_access_key

        # @return [Object, nil] AWS secret key. If not set then the value of the AWS_SECRET_KEY environment variable is used.
        attribute :aws_secret_key

        # @return [String] Bucket name.
        attribute :bucket
        validates :bucket, presence: true, type: String

        # @return [String, nil] The destination file path when downloading an object/key with a GET operation.
        attribute :dest
        validates :dest, type: String

        # @return [Object, nil] When set for PUT mode, asks for server-side encryption
        attribute :encrypt

        # @return [Integer, nil] Time limit (in seconds) for the URL generated and returned by S3/Walrus when performing a mode=put or mode=geturl operation.
        attribute :expiration
        validates :expiration, type: Integer

        # @return [String, nil] Custom headers for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.
        attribute :headers
        validates :headers, type: String

        # @return [String, nil] Specifies the key to start with when using list mode. Object keys are returned in alphabetical order, starting with key after the marker in order.
        attribute :marker
        validates :marker, type: String

        # @return [Integer, nil] Max number of results to return in list mode, set this if you want to retrieve fewer than the default 1000 keys.
        attribute :max_keys
        validates :max_keys, type: Integer

        # @return [String, nil] Metadata for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.
        attribute :metadata
        validates :metadata, type: String

        # @return [:get, :put, :delete, :create, :geturl, :getstr, :delobj, :list] Switches the module behaviour between put (upload), get (download), geturl (return download url, Ansible 1.3+), getstr (download object as string (1.3+)), list (list keys, Ansible 2.0+), create (bucket), delete (bucket), and delobj (delete object, Ansible 2.0+).
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:get, :put, :delete, :create, :geturl, :getstr, :delobj, :list], :message=>"%{value} needs to be :get, :put, :delete, :create, :geturl, :getstr, :delobj, :list"}

        # @return [String, nil] Keyname of the object inside the bucket. Can be used to create "virtual directories", see examples.
        attribute :object
        validates :object, type: String

        # @return [String, nil] This option lets the user set the canned permissions on the object/bucket that are created. The permissions that can be set are 'private', 'public-read', 'public-read-write', 'authenticated-read'. Multiple permissions can be specified as a list.
        attribute :permission
        validates :permission, type: String

        # @return [String, nil] Limits the response to keys that begin with the specified prefix for list mode
        attribute :prefix
        validates :prefix, type: String

        # @return [String, nil] Version ID of the object inside the bucket. Can be used to get a specific version of a file if versioning is enabled in the target bucket.
        attribute :version
        validates :version, type: String

        # @return [TrueClass, nil] Force overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations. Boolean or one of [Always, Never, Different], new in 2.0
        attribute :overwrite
        validates :overwrite, type: TrueClass

        # @return [String, nil] AWS region to create the bucket in. If not set then the value of the AWS_REGION and EC2_REGION environment variables are checked, followed by the aws_region and ec2_region settings in the Boto config file.  If none of those are set the region defaults to the S3 Location: US Standard.  Prior to ansible 1.8 this parameter could be specified but had no effect.
        attribute :region
        validates :region, type: String

        # @return [Integer, nil] On recoverable failure, how many times to retry before actually failing.
        attribute :retries
        validates :retries, type: Integer

        # @return [Object, nil] S3 URL endpoint for usage with Eucalypus, fakes3, etc.  Otherwise assumes AWS
        attribute :s3_url

        # @return [String, nil] The source file path when performing a PUT operation.
        attribute :src
        validates :src, type: String
      end
    end
  end
end
