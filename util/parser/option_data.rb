# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      class OptionData
        attr_reader :types, :name, :description, :choices

        def initialize(name:, description:, required:, types:, flat_array:, choices:)
          @types = types
          @description = description
          @name = name
          @flat_array = flat_array
          @required = required
          @choices = choices
        end

        def required?
          @required
        end

        def flat_array?
          @flat_array
        end
      end
    end
  end
end
