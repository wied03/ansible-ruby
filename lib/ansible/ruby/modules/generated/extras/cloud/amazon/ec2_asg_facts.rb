# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 Auto Scaling Groups (ASGs) in AWS
      class Ec2_asg_facts < Base
        # @return [String, nil] The prefix or name of the auto scaling group(s) you are searching for.,Note: This is a regular expression match with implicit '^' (beginning of string). Append '$' for a complete name match.
        attribute :name
        validates :name, type: String

        # @return [Hash, nil] A dictionary/hash of tags in the format { tag1_name: 'tag1_value', tag2_name: 'tag2_value' } to match against the auto scaling group(s) you are searching for.
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
