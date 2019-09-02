# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The BucketAccessControls resource represents the Access Control Lists (ACLs) for buckets within Google Cloud Storage. ACLs let you specify who has access to your data and to what extent.
      # There are three roles that can be assigned to an entity:  READERs can get the bucket, though no acl property will be returned, and list the bucket's objects.  WRITERs are READERs, and they can insert objects into the bucket and delete the bucket's objects.  OWNERs are WRITERs, and they can get the acl property of a bucket, update a bucket, and call all BucketAccessControls methods on the bucket.  For more information, see Access Control, with the caveat that this API uses READER, WRITER, and OWNER instead of READ, WRITE, and FULL_CONTROL.
      class Gcp_storage_bucket_access_control < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the bucket.
        attribute :bucket
        validates :bucket, presence: true, type: String

        # @return [String] The entity holding the permission, in one of the following forms: user-userId user-email group-groupId group-email domain-domain project-team-projectId allUsers allAuthenticatedUsers Examples: The user liz@example.com would be user-liz@example.com.,The group example@googlegroups.com would be   group-example@googlegroups.com.,To refer to all members of the Google Apps for Business domain   example.com, the entity would be domain-example.com.
        attribute :entity
        validates :entity, presence: true, type: String

        # @return [Object, nil] The ID for the entity.
        attribute :entity_id

        # @return [Object, nil] The project team associated with the entity.
        attribute :project_team

        # @return [:OWNER, :READER, :WRITER, nil] The access permission for the entity.
        attribute :role
        validates :role, expression_inclusion: {:in=>[:OWNER, :READER, :WRITER], :message=>"%{value} needs to be :OWNER, :READER, :WRITER"}, allow_nil: true
      end
    end
  end
end
