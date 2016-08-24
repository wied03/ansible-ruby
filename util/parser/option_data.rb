# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      class OptionData
        attr_reader :types, :name, :description, :choices

        def initialize(name:, description:, required:, types:, choices:)
          @types = types
          @description = description
          @name = name
          @required = required
          @choices = choices
        end

        def required?
          @required
        end
      end
    end
  end
end
