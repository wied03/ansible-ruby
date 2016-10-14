# VALIDATED_CHECKSUM: HoHvaFYbnOUeU03yrUaG8NMWRHEC9ofwjEVNquhM7Dw=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/docker/docker_container'

module Ansible
  module Ruby
    module Modules
      class Docker_container
        remove_existing_validations :volumes
        validates :volumes, type: Hash

        def to_h
          result = super
          data = result[:docker_container]
          if data.include? :volumes
            data[:volumes] = data[:volumes].map do |host_path, info|
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
          result
        end
      end
    end
  end
end
