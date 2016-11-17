# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create snapshots of the running states of selected features, add new show commands for snapshot creation, delete and compare existing snapshots.
      class Nxos_snapshot < Base
        # @return [:create, :add, :compare, :delete] Define what snapshot action the module would perform.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:create, :add, :compare, :delete], :message=>"%{value} needs to be :create, :add, :compare, :delete"}

        # @return [String, nil] Snapshot name, to be used when C(action=create) or C(action=delete).
        attribute :snapshot_name
        validates :snapshot_name, type: String

        # @return [String, nil] Snapshot description to be used when C(action=create).
        attribute :description
        validates :description, type: String

        # @return [String, nil] First snapshot to be used when C(action=compare).
        attribute :snapshot1
        validates :snapshot1, type: String

        # @return [String, nil] Second snapshot to be used when C(action=compare).
        attribute :snapshot2
        validates :snapshot2, type: String

        # @return [String, nil] Name of the file where snapshots comparison will be store.
        attribute :comparison_results_file
        validates :comparison_results_file, type: String

        # @return [:summary, :ipv4routes, :ipv6routes, nil] Snapshot options to be used when C(action=compare).
        attribute :compare_option
        validates :compare_option, inclusion: {:in=>[:summary, :ipv4routes, :ipv6routes], :message=>"%{value} needs to be :summary, :ipv4routes, :ipv6routes"}, allow_nil: true

        # @return [String, nil] Used to name the show command output, to be used when C(action=add).
        attribute :section
        validates :section, type: String

        # @return [String, nil] Specify a new show command, to be used when C(action=add).
        attribute :show_command
        validates :show_command, type: String

        # @return [String, nil] Specifies the tag of each row entry of the show command's XML output, to be used when C(action=add).
        attribute :row_id
        validates :row_id, type: String

        # @return [String, nil] Specify the tags used to distinguish among row entries, to be used when C(action=add).
        attribute :element_key1
        validates :element_key1, type: String

        # @return [Object, nil] Specify the tags used to distinguish among row entries, to be used when C(action=add).
        attribute :element_key2

        # @return [Boolean, nil] Specify to locally store a new created snapshot, to be used when C(action=create).
        attribute :save_snapshot_locally
        validates :save_snapshot_locally, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specify the path of the file where new created snapshot or snapshots comparison will be stored, to be used when C(action=create) and C(save_snapshot_locally=true) or C(action=compare).
        attribute :path
        validates :path, type: String
      end
    end
  end
end
