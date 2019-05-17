# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will replace all instances of a pattern within a file.
      # It is up to the user to maintain idempotence by ensuring that the same pattern would never match any replacements made.
      class Replace < Base
        # @return [String] The file to modify.,Before 2.3 this option was only usable as I(dest), I(destfile) and I(name).
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] The regular expression to look for in the contents of the file. Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html). Uses MULTILINE mode, which means C(^) and C($) match the beginning and end of the file, as well as the beginning and end respectively of I(each line) of the file.,Does not use DOTALL, which means the C(.) special character matches any character I(except newlines). A common mistake is to assume that a negated character set like C([^#]) will also not match newlines. In order to exclude newlines, they must be added to the set like C([^#\\n]).,Note that, as of ansible 2, short form tasks should have any escape sequences backslash-escaped in order to prevent them being parsed as string literal escapes. See the examples.
        attribute :regexp
        validates :regexp, presence: true, type: String

        # @return [String, nil] The string to replace regexp matches. May contain backreferences that will get expanded with the regexp capture groups if the regexp matches. If not set, matches are removed entirely.
        attribute :replace
        validates :replace, type: String

        # @return [String, nil] If specified, the line after the replace/remove will start. Can be used in combination with C(before). Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
        attribute :after
        validates :after, type: String

        # @return [String, nil] If specified, the line before the replace/remove will occur. Can be used in combination with C(after). Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
        attribute :before
        validates :before, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] All arguments accepted by the M(file) module also work here.
        attribute :others

        # @return [String, nil] The character encoding for reading and writing the file.
        attribute :encoding
        validates :encoding, type: String
      end
    end
  end
end
