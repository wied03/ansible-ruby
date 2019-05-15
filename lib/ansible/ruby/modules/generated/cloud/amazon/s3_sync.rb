# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The S3 module is great, but it is very slow for a large volume of files- even a dozen will be noticeable. In addition to speed, it handles globbing, inclusions/exclusions, mime types, expiration mapping, recursion, cache control and smart directory mapping.
      class S3_sync < Base
        # @return [:push] sync direction.
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:push], :message=>"%{value} needs to be :push"}

        # @return [:force, :checksum, :date_size, nil] Difference determination method to allow changes-only syncing. Unlike rsync, files are not patched- they are fully skipped or fully uploaded.,date_size will upload if file sizes don't match or if local file modified date is newer than s3's version,checksum will compare etag values based on s3's implementation of chunked md5s.,force will always upload all files.
        attribute :file_change_strategy
        validates :file_change_strategy, inclusion: {:in=>[:force, :checksum, :date_size], :message=>"%{value} needs to be :force, :checksum, :date_size"}, allow_nil: true

        # @return [String] Bucket name.
        attribute :bucket
        validates :bucket, presence: true, type: String

        # @return [String, nil] In addition to file path, prepend s3 path with this prefix. Module will add slash at end of prefix if necessary.
        attribute :key_prefix
        validates :key_prefix, type: String

        # @return [String] File/directory path for synchronization. This is a local path.,This root path is scrubbed from the key name, so subdirectories will remain as keys.
        attribute :file_root
        validates :file_root, presence: true, type: String

        # @return [:"", :private, :"public-read", :"public-read-write", :"authenticated-read", :"aws-exec-read", :"bucket-owner-read", :"bucket-owner-full-control", nil] Canned ACL to apply to synced files.,Changing this ACL only changes newly synced files, it does not trigger a full reupload.
        attribute :permission
        validates :permission, inclusion: {:in=>[:"", :private, :"public-read", :"public-read-write", :"authenticated-read", :"aws-exec-read", :"bucket-owner-read", :"bucket-owner-full-control"], :message=>"%{value} needs to be :\"\", :private, :\"public-read\", :\"public-read-write\", :\"authenticated-read\", :\"aws-exec-read\", :\"bucket-owner-read\", :\"bucket-owner-full-control\""}, allow_nil: true

        # @return [Hash, nil] Dict entry from extension to MIME type. This will override any default/sniffed MIME type. For example C({".txt": "application/text", ".yml": "application/text"})\r\n
        attribute :mime_map
        validates :mime_map, type: Hash

        # @return [String, nil] Shell pattern-style file matching.,Used before exclude to determine eligible files (for instance, only "*.gif"),For multiple patterns, comma-separate them.
        attribute :include
        validates :include, type: String

        # @return [String, nil] Shell pattern-style file matching.,Used after include to remove files (for instance, skip "*.txt"),For multiple patterns, comma-separate them.
        attribute :exclude
        validates :exclude, type: String

        # @return [Array<String>, String, nil] This is a string.,Cache-Control header set on uploaded objects.,Directives are separated by commmas.
        attribute :cache_control
        validates :cache_control, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Remove remote files that exist in bucket but are not present in the file root.
        attribute :delete
        validates :delete, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
