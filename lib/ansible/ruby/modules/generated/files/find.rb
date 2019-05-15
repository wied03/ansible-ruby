# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return a list of files based on specific criteria. Multiple criteria are AND'd together.
      # For Windows targets, use the M(win_find) module instead.
      class Find < Base
        # @return [String, Integer, nil] Select files whose age is equal to or greater than the specified time. Use a negative age to find files equal to or less than the specified time. You can choose seconds, minutes, hours, days, or weeks by specifying the first letter of any of those words (e.g., "1w").
        attribute :age
        validates :age, type: MultipleTypes.new(String, Integer)

        # @return [String, nil] One or more (shell or regex) patterns, which type is controlled by C(use_regex) option.,The patterns restrict the list of files to be returned to those whose basenames match at least one of the patterns specified. Multiple patterns can be specified using a list.
        attribute :patterns
        validates :patterns, type: String

        # @return [Array<String>, String, nil] One or more (shell or regex) patterns, which type is controlled by C(use_regex) option.,Items matching an C(excludes) pattern are culled from C(patterns) matches. Multiple patterns can be specified using a list.
        attribute :excludes
        validates :excludes, type: TypeGeneric.new(String)

        # @return [Object, nil] One or more regex patterns which should be matched against the file content.
        attribute :contains

        # @return [String] List of paths of directories to search. All paths must be fully qualified.
        attribute :paths
        validates :paths, presence: true, type: String

        # @return [:any, :directory, :file, :link, nil] Type of file to select.,The 'link' and 'any' choices were added in version 2.3.
        attribute :file_type
        validates :file_type, inclusion: {:in=>[:any, :directory, :file, :link], :message=>"%{value} needs to be :any, :directory, :file, :link"}, allow_nil: true

        # @return [String, nil] If target is a directory, recursively descend into the directory looking for files.
        attribute :recurse
        validates :recurse, type: String

        # @return [String, nil] Select files whose size is equal to or greater than the specified size. Use a negative size to find files equal to or less than the specified size. Unqualified values are in bytes but b, k, m, g, and t can be appended to specify bytes, kilobytes, megabytes, gigabytes, and terabytes, respectively. Size is not evaluated for directories.
        attribute :size
        validates :size, type: String

        # @return [:atime, :ctime, :mtime, nil] Choose the file property against which we compare age.
        attribute :age_stamp
        validates :age_stamp, inclusion: {:in=>[:atime, :ctime, :mtime], :message=>"%{value} needs to be :atime, :ctime, :mtime"}, allow_nil: true

        # @return [String, nil] Set this to true to include hidden files, otherwise they'll be ignored.
        attribute :hidden
        validates :hidden, type: String

        # @return [String, nil] Set this to true to follow symlinks in path for systems with python 2.6+.
        attribute :follow
        validates :follow, type: String

        # @return [String, nil] Set this to true to retrieve a file's sha1 checksum.
        attribute :get_checksum
        validates :get_checksum, type: String

        # @return [String, nil] If false, the patterns are file globs (shell). If true, they are python regexes.
        attribute :use_regex
        validates :use_regex, type: String

        # @return [Object, nil] Set the maximum number of levels to decend into. Setting recurse to false will override this value, which is effectively depth 1. Default is unlimited depth.
        attribute :depth
      end
    end
  end
end
