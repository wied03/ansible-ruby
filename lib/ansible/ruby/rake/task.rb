require 'rake/tasklib'

module Ansible
  module Ruby
    module Rake
      class Task < ::Rake::TaskLib
        def initialize(parameters=:default)
          name, deps = parse_params parameters
          task name => deps if deps
          task name do
            puts 'would run now'
          end
        end

        private

        def parse_params parameters
          deps = nil
          name = case parameters
                 when Hash
                   n = parameters.keys[0]
                   deps = parameters[n]
                   n
                 else
                   parameters
                 end
          [name, deps]
        end

      end
    end
  end
end
