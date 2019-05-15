# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about Redshift cluster(s)
      class Redshift_facts < Base
        # @return [Object, nil] The prefix of cluster identifier of the Redshift cluster you are searching for.,This is a regular expression match with implicit '^'. Append '$' for a complete match.
        attribute :cluster_identifier

        # @return [Hash, nil] A dictionary/hash of tags in the format { tag1_name: 'tag1_value', tag2_name: 'tag2_value' } to match against the security group(s) you are searching for.
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
