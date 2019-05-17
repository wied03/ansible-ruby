# frozen_string_literal: true
# VALIDATED_CHECKSUM: zEUT/1FroHoYlOErFCb1SaTk/jDFt2sb9Ahrl65Ln5I=

require 'ansible/ruby/modules/generated/net_tools/basics/get_url'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Get_url
        include Helpers::FileAttributes

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
