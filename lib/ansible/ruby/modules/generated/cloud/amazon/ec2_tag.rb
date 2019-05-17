# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, removes and lists tags for any EC2 resource.  The resource is referenced by its resource id (e.g. an instance being i-XXXXXXX). It is designed to be used with complex args (tags), see the examples.
      class Ec2_tag < Base
        # @return [String] The EC2 resource id.
        attribute :resource
        validates :resource, presence: true, type: String

        # @return [:present, :absent, :list, nil] Whether the tags should be present or absent on the resource. Use list to interrogate the tags of an instance.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :list], :message=>"%{value} needs to be :present, :absent, :list"}, allow_nil: true

        # @return [Hash] a hash/dictionary of tags to add to the resource; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, presence: true, type: Hash

        # @return [Symbol, nil] Whether unspecified tags should be removed from the resource.,Note that when combined with C(state: absent), specified tags with non-matching values are not purged.
        attribute :purge_tags
        validates :purge_tags, type: Symbol
      end
    end
  end
end
