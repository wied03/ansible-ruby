# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pingdom < Base
        # @return [String] Define whether or not the check should be running or paused.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:running, :paused], :message=>"%{value} needs to be :running, :paused"}

        # @return [String] Pingdom ID of the check.
        attribute :checkid
        validates :checkid, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] Pingdom user ID.
        attribute :uid
        validates :uid, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] Pingdom user password.
        attribute :passwd
        validates :passwd, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] Pingdom API key.
        attribute :key
        validates :key, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}
      end
    end
  end
end
