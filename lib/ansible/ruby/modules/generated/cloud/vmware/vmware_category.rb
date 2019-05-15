# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to create / delete / update VMware categories.
      # Tag feature is introduced in vSphere 6 version, so this module is not supported in the earlier versions of vSphere.
      # All variables and VMware object names are case sensitive.
      class Vmware_category < Base
        # @return [String] The name of category to manage.
        attribute :category_name
        validates :category_name, presence: true, type: String

        # @return [String, nil] The category description.,This is required only if C(state) is set to C(present).,This parameter is ignored, when C(state) is set to C(absent).
        attribute :category_description
        validates :category_description, type: String

        # @return [:multiple, :single, nil] The category cardinality.,This parameter is ignored, when updating existing category.
        attribute :category_cardinality
        validates :category_cardinality, inclusion: {:in=>[:multiple, :single], :message=>"%{value} needs to be :multiple, :single"}, allow_nil: true

        # @return [String, nil] The new name for an existing category.,This value is used while updating an existing category.
        attribute :new_category_name
        validates :new_category_name, type: String

        # @return [:present, :absent, nil] The state of category.,If set to C(present) and category does not exists, then category is created.,If set to C(present) and category exists, then category is updated.,If set to C(absent) and category exists, then category is deleted.,If set to C(absent) and category does not exists, no action is taken.,Process of updating category only allows name, description change.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
