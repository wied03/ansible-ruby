# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pingdom < Base
        # @return [:running, :paused] Define whether or not the check should be running or paused.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:running, :paused], :message=>"%{value} needs to be :running, :paused"}

        # @return [String] Pingdom ID of the check.
        attribute :checkid
        validates :checkid, presence: true, type: String

        # @return [String] Pingdom user ID.
        attribute :uid
        validates :uid, presence: true, type: String

        # @return [String] Pingdom user password.
        attribute :passwd
        validates :passwd, presence: true, type: String

        # @return [String] Pingdom API key.
        attribute :key
        validates :key, presence: true, type: String
      end
    end
  end
end
