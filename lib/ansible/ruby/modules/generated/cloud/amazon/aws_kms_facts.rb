# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about AWS KMS keys including tags and grants
      class Aws_kms_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. The filters aren't natively supported by boto3, but are supported to provide similar functionality to other modules. Standard tag filters (C(tag-key), C(tag-value) and C(tag:tagName)) are available, as are C(key-id) and C(alias)
        attribute :filters
        validates :filters, type: Hash

        # @return [Boolean, nil] Whether to get full details (tags, grants etc.) of keys pending deletion
        attribute :pending_deletion
        validates :pending_deletion, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
