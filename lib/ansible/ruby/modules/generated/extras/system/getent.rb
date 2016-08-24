# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Getent < Base
        # @return [String] the name of a getent database supported by the target system (passwd, group, hosts, etc).
        attribute :database
        validates :database, presence: true, type: String

        # @return [String, nil] key from which to return values from the specified database, otherwise the full contents are returned.
        attribute :key
        validates :key, type: String

        # @return [String, nil] character used to split the database values into lists/arrays such as ':' or '	', otherwise  it will try to pick one depending on the database
        attribute :split
        validates :split, type: String

        # @return [Boolean, nil] If a supplied key is missing this will make the task fail if True
        attribute :fail_key
        validates :fail_key, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
