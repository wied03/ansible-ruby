# VALIDATED_CHECKSUM: 8ktTiahMAzMVSxRLVLLtblQnW5xqxnjEx/VLO7Z0mSQ=
require 'ansible/ruby/modules/generated/core/network/basics/get_url'

module Ansible
  module Ruby
    module Modules
      class Get_url
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