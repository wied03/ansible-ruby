# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Find < Base
        # @return [String] Select files whose age is equal to or greater than the specified time. Use a negative age to find files equal to or less than the specified time. You can choose seconds, minutes, hours, days, or weeks by specifying the first letter of any of those words (e.g., "1w").
        attribute :age
        validates :age, type: String

        # @return [String] One or more (shell or regex) patterns, which type is controled by C(use_regex) option.,The patterns restrict the list of files to be returned to those whose basenames match at least one of the patterns specified. Multiple patterns can be specified using a list.
        attribute :patterns
        validates :patterns, type: String

        # @return [Object] One or more re patterns which should be matched against the file content
        attribute :contains

        # @return [String] List of paths to the file or directory to search. All paths must be fully qualified.
        attribute :paths
        validates :paths, presence: true, type: String

        # @return [:file, :directory, nil] Type of file to select
        attribute :file_type
        validates :file_type, inclusion: {:in=>[:file, :directory], :message=>"%{value} needs to be :file, :directory"}, allow_nil: true

        # @return [:yes, :no, nil] If target is a directory, recursively descend into the directory looking for files.
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Select files whose size is equal to or greater than the specified size. Use a negative size to find files equal to or less than the specified size. Unqualified values are in bytes, but b, k, m, g, and t can be appended to specify bytes, kilobytes, megabytes, gigabytes, and terabytes, respectively. Size is not evaluated for directories.
        attribute :size
        validates :size, type: String

        # @return [:atime, :mtime, :ctime, nil] Choose the file property against which we compare age. Default is mtime.
        attribute :age_stamp
        validates :age_stamp, inclusion: {:in=>[:atime, :mtime, :ctime], :message=>"%{value} needs to be :atime, :mtime, :ctime"}, allow_nil: true

        # @return [Boolean, nil] Set this to true to include hidden files, otherwise they'll be ignored.
        attribute :hidden
        validates :hidden, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Set this to true to follow symlinks in path for systems with python 2.6+
        attribute :follow
        validates :follow, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Set this to true to retrieve a file's sha1 checksum
        attribute :get_checksum
        validates :get_checksum, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If false the patterns are file globs (shell) if true they are python regexes
        attribute :use_regex
        validates :use_regex, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
