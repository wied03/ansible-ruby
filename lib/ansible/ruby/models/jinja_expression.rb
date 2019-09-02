# frozen_string_literal: true

require 'ansible/ruby/models/base'
require 'ansible/ruby/models/tasks'

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

        def ===(b)
          b.is_a?(JinjaExpression) && expression == b.expression
        end
      end
    end
  end
end
