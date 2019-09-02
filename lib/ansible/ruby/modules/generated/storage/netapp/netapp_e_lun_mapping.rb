# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, or modify mappings between a volume and a targeted host/host+ group.
      class Netapp_e_lun_mapping < Base
        # @return [:present, :absent] Present will ensure the mapping exists, absent will remove the mapping.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] The name of host or hostgroup you wish to assign to the mapping,If omitted, the default hostgroup is used.,If the supplied I(volume_name) is associated with a different target, it will be updated to what is supplied here.
        attribute :target
        validates :target, type: String

        # @return [Object] The name of the volume you wish to include in the mapping.
        attribute :volume_name
        validates :volume_name, presence: true

        # @return [Object, nil] The LUN value you wish to give the mapping.,If the supplied I(volume_name) is associated with a different LUN, it will be updated to what is supplied here.,LUN value will be determine by the storage-system when not specified.
        attribute :lun

        # @return [:host, :group, nil] This option specifies the whether the target should be a host or a group of hosts,Only necessary when the target name is used for both a host and a group of hosts
        attribute :target_type
        validates :target_type, expression_inclusion: {:in=>[:host, :group], :message=>"%{value} needs to be :host, :group"}, allow_nil: true
      end
    end
  end
end
