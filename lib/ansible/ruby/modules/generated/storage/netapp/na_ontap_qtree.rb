# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy Qtrees.
      class Na_ontap_qtree < Base
        # @return [:present, :absent, nil] Whether the specified qtree should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the qtree to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the qtree to be renamed.
        attribute :from_name

        # @return [String, nil] The name of the FlexVol the qtree should exist on. Required when C(state=present).
        attribute :flexvol_name
        validates :flexvol_name, type: String

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
