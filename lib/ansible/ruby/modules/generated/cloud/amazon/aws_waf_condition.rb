# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for WAF U(https://aws.amazon.com/documentation/waf/)
      class Aws_waf_condition < Base
        # @return [String] Name of the Web Application Firewall condition to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [:byte, :geo, :ip, :regex, :size, :sql, :xss, nil] the type of matching to perform
        attribute :type
        validates :type, expression_inclusion: {:in=>[:byte, :geo, :ip, :regex, :size, :sql, :xss], :message=>"%{value} needs to be :byte, :geo, :ip, :regex, :size, :sql, :xss"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of the filters against which to match,For I(type)=C(byte), valid keys are C(field_to_match), C(position), C(header), C(transformation),For I(type)=C(geo), the only valid key is C(country),For I(type)=C(ip), the only valid key is C(ip_address),For I(type)=C(regex), valid keys are C(field_to_match), C(transformation) and C(regex_pattern),For I(type)=C(size), valid keys are C(field_to_match), C(transformation), C(comparison) and C(size),For I(type)=C(sql), valid keys are C(field_to_match) and C(transformation),For I(type)=C(xss), valid keys are C(field_to_match) and C(transformation),I(field_to_match) can be one of C(uri), C(query_string), C(header) C(method) and C(body),If I(field_to_match) is C(header), then C(header) must also be specified,I(transformation) can be one of C(none), C(compress_white_space), C(html_entity_decode), C(lowercase), C(cmd_line), C(url_decode),I(position), can be one of C(exactly), C(starts_with), C(ends_with), C(contains), C(contains_word),,I(comparison) can be one of C(EQ), C(NE), C(LE), C(LT), C(GE), C(GT),,I(target_string) is a maximum of 50 bytes,I(regex_pattern) is a dict with a C(name) key and C(regex_strings) list of strings to match
        attribute :filters
        validates :filters, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Whether to remove existing filters from a condition if not passed in I(filters). Defaults to false
        attribute :purge_filters

        # @return [:present, :absent, nil] Whether the condition should be C(present) or C(absent)
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
