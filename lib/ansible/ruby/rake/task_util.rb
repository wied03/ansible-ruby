# frozen_string_literal: true

# See LICENSE.txt for license
module Ansible
  module Ruby
    module Rake
      module TaskUtil
        def yaml_filenames(ruby_files)
          ruby_files.map { |file| file.sub(/\.[^.]+\z/, '.yml') }
        end

        def parse_params(parameters)
          deps = nil
          name = case parameters
                 when Hash
                   name = parameters.keys[0]
                   deps = parameters[name]
                   name
                 else
                   parameters
                 end
          [name, deps]
        end
      end
    end
  end
end
