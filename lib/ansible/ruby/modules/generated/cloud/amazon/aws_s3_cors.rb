# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage CORS for S3 buckets in AWS
      class Aws_s3_cors < Base
        # @return [String] Name of the s3 bucket
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] Cors rules to put on the s3 bucket
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [:present, :absent] Create or remove cors on the s3 bucket
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
