# frozen_string_literal: true

module Ansible
  module Ruby
    module Models
      class JinjaExpression
        attr_reader :expression

        def initialize(expression)
          @expression = expression
        end

        def to_s
          "{{ #{@expression} }}"
        end

        def to_str
          to_s
        end

        def ===(other_node)
          other_node.is_a?(JinjaExpression) && expression == other_node.expression
        end
      end
    end
  end
end
