# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manage tags in oVirt/RHV. It can also manage assignments of those tags to entities.
      class Ovirt_tag < Base
        # @return [String] Name of the tag to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :attached, :detached, nil] Should the tag be present/absent/attached/detached.,C(Note): I(attached) and I(detached) states are supported since version 2.4.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :attached, :detached], :message=>"%{value} needs to be :present, :absent, :attached, :detached"}, allow_nil: true

        # @return [Object, nil] Description of the tag to manage.
        attribute :description

        # @return [Object, nil] Name of the parent tag.
        attribute :parent

        # @return [Array<String>, String, nil] List of the VMs names, which should have assigned this tag.
        attribute :vms
        validates :vms, type: TypeGeneric.new(String, NilClass)

        # @return [Object, nil] List of the hosts names, which should have assigned this tag.
        attribute :hosts
      end
    end
  end
end
