# VALIDATED_CHECKSUM: pt3kbmbhxlsBF6TacRBnZbk+VEk8d5HzG2ugwHE/ajY=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/docker/docker_container'

module Ansible
  module Ruby
    module Modules
      class Docker_container
        remove_existing_validations :volumes
        validates :volumes, type: Hash
        remove_existing_validations :network_mode
        validates :network_mode, type: String

        def to_h
          result = super
          data = result[:docker_container]
          if data.include? :volumes
            data[:volumes] = transform_volumes data[:volumes]
          end
          result
        end

        private

        def transform_volumes(input)
          input.map do |host_path, info|
            image_path = if info.is_a? Hash
                           flags = info[:flags]
                           path = info[:path]
                           [path, flags].join ':'
                         else
                           info
                         end
            [host_path, image_path].join ':'
          end
        end
      end
    end
  end
end
