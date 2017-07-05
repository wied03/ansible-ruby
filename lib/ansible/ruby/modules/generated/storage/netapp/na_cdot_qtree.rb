# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy Qtrees.
      class Na_cdot_qtree < Base
        # @return [:present, :absent] Whether the specified Qtree should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the Qtree to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the FlexVol the Qtree should exist on. Required when C(state=present).
        attribute :flexvol_name
        validates :flexvol_name, type: String

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
