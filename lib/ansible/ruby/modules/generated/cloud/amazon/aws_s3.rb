# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the user to manage S3 buckets and the objects within them. Includes support for creating and deleting both objects and buckets, retrieving objects as files or strings and generating download links. This module has a dependency on boto3 and botocore.
      class Aws_s3 < Base
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

        # @return [Boolean, nil] When set for PUT mode, asks for server-side encryption.
        attribute :encrypt
        validates :encrypt, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:AES256, :"aws:kms", nil] What encryption mode to use if C(encrypt) is set
        attribute :encryption_mode
        validates :encryption_mode, inclusion: {:in=>[:AES256, :"aws:kms"], :message=>"%{value} needs to be :AES256, :\"aws:kms\""}, allow_nil: true

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

        # @return [Array<String>, String, nil] Metadata for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.
        attribute :metadata
        validates :metadata, type: TypeGeneric.new(String)

        # @return [:get, :put, :delete, :create, :geturl, :getstr, :delobj, :list] Switches the module behaviour between put (upload), get (download), geturl (return download url, Ansible 1.3+), getstr (download object as string (1.3+)), list (list keys, Ansible 2.0+), create (bucket), delete (bucket), and delobj (delete object, Ansible 2.0+).
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:get, :put, :delete, :create, :geturl, :getstr, :delobj, :list], :message=>"%{value} needs to be :get, :put, :delete, :create, :geturl, :getstr, :delobj, :list"}

        # @return [String, nil] Keyname of the object inside the bucket. Can be used to create "virtual directories", see examples.
        attribute :object
        validates :object, type: String

        # @return [String, nil] This option lets the user set the canned permissions on the object/bucket that are created. The permissions that can be set are 'private', 'public-read', 'public-read-write', 'authenticated-read' for a bucket or 'private', 'public-read', 'public-read-write', 'aws-exec-read', 'authenticated-read', 'bucket-owner-read', 'bucket-owner-full-control' for an object. Multiple permissions can be specified as a list.
        attribute :permission
        validates :permission, type: String

        # @return [String, nil] Limits the response to keys that begin with the specified prefix for list mode
        attribute :prefix
        validates :prefix, type: String

        # @return [String, nil] Version ID of the object inside the bucket. Can be used to get a specific version of a file if versioning is enabled in the target bucket.
        attribute :version
        validates :version, type: String

        # @return [String, nil] Force overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations. Boolean or one of [always, never, different], true is equal to 'always' and false is equal to 'never', new in 2.0. When this is set to 'different', the md5 sum of the local file is compared with the 'ETag' of the object/key in S3. The ETag may or may not be an MD5 digest of the object data. See the ETag response header here U(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html)
        attribute :overwrite
        validates :overwrite, type: String

        # @return [String, nil] AWS region to create the bucket in. If not set then the value of the AWS_REGION and EC2_REGION environment variables are checked, followed by the aws_region and ec2_region settings in the Boto config file. If none of those are set the region defaults to the S3 Location: US Standard. Prior to ansible 1.8 this parameter could be specified but had no effect.
        attribute :region
        validates :region, type: String

        # @return [Integer, nil] On recoverable failure, how many times to retry before actually failing.
        attribute :retries
        validates :retries, type: Integer

        # @return [String, nil] S3 URL endpoint for usage with Ceph, Eucalypus, fakes3, etc.  Otherwise assumes AWS
        attribute :s3_url
        validates :s3_url, type: String

        # @return [:yes, :no, nil] Enables Amazon S3 Dual-Stack Endpoints, allowing S3 communications using both IPv4 and IPv6.,Requires at least botocore version 1.4.45.
        attribute :dualstack
        validates :dualstack, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Boolean, nil] Enable Ceph RGW S3 support. This option requires an explicit url via s3_url.
        attribute :rgw
        validates :rgw, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The source file path when performing a PUT operation.
        attribute :src
        validates :src, type: String

        # @return [Object, nil] Overrides initial bucket lookups in case bucket or iam policies are restrictive. Example: a user may have the GetObject permission but no other permissions. In this case using the option mode: get will fail without specifying ignore_nonexistent_bucket: True.
        attribute :ignore_nonexistent_bucket

        # @return [Object, nil] KMS key id to use when encrypting objects using C(aws:kms) encryption. Ignored if encryption is not C(aws:kms)
        attribute :encryption_kms_key_id
      end
    end
  end
end
