# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The Buckets resource represents a bucket in Google Cloud Storage. There is a single global namespace shared by all buckets. For more information, see Bucket Name Requirements.
      # Buckets contain objects which can be accessed by their own methods. In addition to the acl property, buckets contain bucketAccessControls, for use in fine-grained manipulation of an existing bucket's access controls.
      # A bucket is always owned by the project team owners group.
      class Gcp_storage_bucket < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Access controls on the bucket.
        attribute :acl

        # @return [Object, nil] The bucket's Cross-Origin Resource Sharing (CORS) configuration.
        attribute :cors

        # @return [Object, nil] Default access controls to apply to new objects when no ACL is provided.
        attribute :default_object_acl

        # @return [Object, nil] The bucket's lifecycle configuration.,See U(https://developers.google.com/storage/docs/lifecycle) for more information.
        attribute :lifecycle

        # @return [Object, nil] The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
        attribute :location

        # @return [Object, nil] The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
        attribute :logging

        # @return [Object, nil] The metadata generation of this bucket.
        attribute :metageneration

        # @return [String, nil] The name of the bucket.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The owner of the bucket. This is always the project team's owner group.
        attribute :owner

        # @return [:MULTI_REGIONAL, :REGIONAL, :STANDARD, :NEARLINE, :COLDLINE, :DURABLE_REDUCED_AVAILABILITY, nil] The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage.,Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
        attribute :storage_class
        validates :storage_class, inclusion: {:in=>[:MULTI_REGIONAL, :REGIONAL, :STANDARD, :NEARLINE, :COLDLINE, :DURABLE_REDUCED_AVAILABILITY], :message=>"%{value} needs to be :MULTI_REGIONAL, :REGIONAL, :STANDARD, :NEARLINE, :COLDLINE, :DURABLE_REDUCED_AVAILABILITY"}, allow_nil: true

        # @return [Object, nil] The bucket's versioning configuration.
        attribute :versioning

        # @return [Object, nil] The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
        attribute :website

        # @return [String, nil] A valid API project identifier.
        attribute :project
        validates :project, type: String

        # @return [:authenticatedRead, :bucketOwnerFullControl, :bucketOwnerRead, :private, :projectPrivate, :publicRead, nil] Apply a predefined set of default object access controls to this bucket.,Acceptable values are:   - "authenticatedRead": Object owner gets OWNER access, and     allAuthenticatedUsers get READER access.,- "bucketOwnerFullControl": Object owner gets OWNER access, and     project team owners get OWNER access.,- "bucketOwnerRead": Object owner gets OWNER access, and project     team owners get READER access.,- "private": Object owner gets OWNER access.,- "projectPrivate": Object owner gets OWNER access, and project team     members get access according to their roles.,- "publicRead": Object owner gets OWNER access, and allUsers get     READER access.
        attribute :predefined_default_object_acl
        validates :predefined_default_object_acl, inclusion: {:in=>[:authenticatedRead, :bucketOwnerFullControl, :bucketOwnerRead, :private, :projectPrivate, :publicRead], :message=>"%{value} needs to be :authenticatedRead, :bucketOwnerFullControl, :bucketOwnerRead, :private, :projectPrivate, :publicRead"}, allow_nil: true
      end
    end
  end
end
