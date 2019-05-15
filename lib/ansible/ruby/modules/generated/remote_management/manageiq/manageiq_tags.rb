# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_tags module supports adding, updating and deleting tags in ManageIQ.
      class Manageiq_tags < Base
        # @return [:absent, :present, :list, nil] absent - tags should not exist,,present - tags should exist,,list - list current tags.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :list], :message=>"%{value} needs to be :absent, :present, :list"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] tags - list of dictionaries, each includes 'name' and 'category' keys.,required if state is present or absent.
        attribute :tags
        validates :tags, type: TypeGeneric.new(Hash)

        # @return [:provider, :host, :vm, :blueprint, :category, :cluster, :"data store", :group, :"resource pool", :service, :"service template", :template, :tenant, :user] the relevant resource type in manageiq
        attribute :resource_type
        validates :resource_type, presence: true, inclusion: {:in=>[:provider, :host, :vm, :blueprint, :category, :cluster, :"data store", :group, :"resource pool", :service, :"service template", :template, :tenant, :user], :message=>"%{value} needs to be :provider, :host, :vm, :blueprint, :category, :cluster, :\"data store\", :group, :\"resource pool\", :service, :\"service template\", :template, :tenant, :user"}

        # @return [String] the relevant resource name in manageiq
        attribute :resource_name
        validates :resource_name, presence: true, type: String
      end
    end
  end
end
