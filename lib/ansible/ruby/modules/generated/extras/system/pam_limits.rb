# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pam_limits < Base
        # @return [String] A username, @groupname, wildcard, uid/gid range.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [:hard, :soft, :-] Limit type, see C(man limits) for an explanation
        attribute :limit_type
        validates :limit_type, presence: true, inclusion: {:in=>[:hard, :soft, :-], :message=>"%{value} needs to be :hard, :soft, :-"}

        # @return [:core, :data, :fsize, :memlock, :nofile, :rss, :stack, :cpu, :nproc, :as, :maxlogins, :maxsyslogins, :priority, :locks, :sigpending, :msgqueue, :nice, :rtprio, :chroot] The limit to be set
        attribute :limit_item
        validates :limit_item, presence: true, inclusion: {:in=>[:core, :data, :fsize, :memlock, :nofile, :rss, :stack, :cpu, :nproc, :as, :maxlogins, :maxsyslogins, :priority, :locks, :sigpending, :msgqueue, :nice, :rtprio, :chroot], :message=>"%{value} needs to be :core, :data, :fsize, :memlock, :nofile, :rss, :stack, :cpu, :nproc, :as, :maxlogins, :maxsyslogins, :priority, :locks, :sigpending, :msgqueue, :nice, :rtprio, :chroot"}

        # @return [String] The value of the limit.
        attribute :value
        validates :value, presence: true, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes), the minimal value will be used or conserved. If the specified value is inferior to the value in the file, file content is replaced with the new value, else content is not modified.
        attribute :use_min
        validates :use_min, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes), the maximal value will be used or conserved. If the specified value is superior to the value in the file, file content is replaced with the new value, else content is not modified.
        attribute :use_max
        validates :use_max, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Modify the limits.conf path.
        attribute :dest
        validates :dest, type: String

        # @return [String] Comment associated with the limit.
        attribute :comment
        validates :comment, type: String
      end
    end
  end
end
