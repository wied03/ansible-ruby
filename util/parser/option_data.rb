# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      class OptionData
        attr_reader :type, :name, :description, :choices

        def initialize(name:, description:, required:, type:, flat_array:, choices:)
          @type = type
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
