# frozen_string_literal: true
# VALIDATED_CHECKSUM: v5T3dbovbGBE0ljyTcaYnW+gG0ChWYC8CHAat1jZPP8=
require 'ansible/ruby/modules/generated/network/basics/get_url'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Get_url
        include Helpers::FileAttributes
        remove_existing_validations :headers
        # @return [Hash, nil] Add custom HTTP headers to a request in the format "key:value,key:value"
        validates :headers, type: Hash

        def to_h
          result = super
          data = result[:get_url]
          # Ansible expects a string for some reason
          if data.include? :headers
            data[:headers] = data[:headers].map do |key, value|
              "#{key}:#{value}"
            end.join ','
          end
          result
        end
      end
    end
  end
end
