# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts for ACM certificates
      class Aws_acm_facts < Base
        # @return [String, nil] The domain name of an ACM certificate to limit the search to
        attribute :domain_name
        validates :domain_name, type: String

        # @return [:PENDING_VALIDATION, :ISSUED, :INACTIVE, :EXPIRED, :VALIDATION_TIMED_OUT, nil] Status to filter the certificate results
        attribute :status
        validates :status, inclusion: {:in=>[:PENDING_VALIDATION, :ISSUED, :INACTIVE, :EXPIRED, :VALIDATION_TIMED_OUT], :message=>"%{value} needs to be :PENDING_VALIDATION, :ISSUED, :INACTIVE, :EXPIRED, :VALIDATION_TIMED_OUT"}, allow_nil: true
      end
    end
  end
end
