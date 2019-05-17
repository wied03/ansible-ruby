# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return a list of files based on specified criteria.
      # Multiple criteria are AND'd together.
      # For non-Windows targets, use the M(find) module instead.
      class Win_find < Base
        # @return [Integer, String, nil] Select files or folders whose age is equal to or greater than the specified time. Use a negative age to find files equal to or less than the specified time. You can choose seconds, minutes, hours, days or weeks by specifying the first letter of an of those words (e.g., "2s", "10d", 1w").
        attribute :age
        validates :age, type: MultipleTypes.new(Integer, String)

        # @return [:atime, :ctime, :mtime, nil] Choose the file property against which we compare C(age). The default attribute we compare with is the last modification time.
        attribute :age_stamp
        validates :age_stamp, inclusion: {:in=>[:atime, :ctime, :mtime], :message=>"%{value} needs to be :atime, :ctime, :mtime"}, allow_nil: true

        # @return [:md5, :sha1, :sha256, :sha384, :sha512, nil] Algorithm to determine the checksum of a file. Will throw an error if the host is unable to use specified algorithm.
        attribute :checksum_algorithm
        validates :checksum_algorithm, inclusion: {:in=>[:md5, :sha1, :sha256, :sha384, :sha512], :message=>"%{value} needs to be :md5, :sha1, :sha256, :sha384, :sha512"}, allow_nil: true

        # @return [:directory, :file, nil] Type of file to search for.
        attribute :file_type
        validates :file_type, inclusion: {:in=>[:directory, :file], :message=>"%{value} needs to be :directory, :file"}, allow_nil: true

        # @return [:yes, :no, nil] Set this to C(yes) to follow symlinks in the path.,This needs to be used in conjunction with C(recurse).
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to return a checksum of the file in the return info (default sha1), use C(checksum_algorithm) to change from the default.
        attribute :get_checksum
        validates :get_checksum, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Set this to include hidden files or folders.
        attribute :hidden
        validates :hidden, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String] List of paths of directories to search for files or folders in. This can be supplied as a single path or a list of paths.
        attribute :paths
        validates :paths, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] One or more (powershell or regex) patterns to compare filenames with. The type of pattern matching is controlled by C(use_regex) option. The patterns retrict the list of files or folders to be returned based on the filenames. For a file to be matched it only has to match with one pattern in a list provided.
        attribute :patterns
        validates :patterns, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Will recursively descend into the directory looking for files or folders.
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, String, nil] Select files or folders whose size is equal to or greater than the specified size. Use a negative value to find files equal to or less than the specified size. You can specify the size with a suffix of the byte type i.e. kilo = k, mega = m... Size is not evaluated for symbolic links.
        attribute :size
        validates :size, type: MultipleTypes.new(Integer, String)

        # @return [:yes, :no, nil] Will set patterns to run as a regex check if set to C(yes).
        attribute :use_regex
        validates :use_regex, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
