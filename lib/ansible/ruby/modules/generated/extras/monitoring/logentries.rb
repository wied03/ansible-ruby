# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Logentries < Base
        # @return [String] path to a log file
        attribute :path
        validates :path, presence: true, type: String

        # @return [:present, :absent, nil] following state of the log
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] name of the log
        attribute :name
        validates :name, type: String

        # @return [Object, nil] type of the log
        attribute :logtype
      end
    end
  end
end
