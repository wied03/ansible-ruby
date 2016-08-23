# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Replace < Base
        # @return [String] The file to modify.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] The regular expression to look for in the contents of the file. Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html). Uses multiline mode, which means C(^) and C($) match the beginning and end respectively of I(each line) of the file.
        attribute :regexp
        validates :regexp, presence: true, type: String

        # @return [String] The string to replace regexp matches. May contain backreferences that will get expanded with the regexp capture groups if the regexp matches. If not set, matches are removed entirely.
        attribute :replace
        validates :replace, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] All arguments accepted by the M(file) module also work here.
        attribute :others

        # @return [:yes, :no, nil] This flag indicates that filesystem links, if they exist, should be followed.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
