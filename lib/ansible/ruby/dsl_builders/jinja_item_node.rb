# frozen_string_literal: true
# see LICENSE.txt in project root
module Ansible
  module Ruby
    module DslBuilders
      class JinjaItemNode
        def initialize(contexts = 'item')
          @contexts = [*contexts]
        end

        def +(other)
          to_s + other.to_s
        end

        def to_s
          flat = @contexts.join '.'
          "{{ #{flat} }}"
        end

        def to_str
          to_s
        end

        # we need to respond to everything, don't want super
        # rubocop:disable Style/MethodMissing
        def method_missing(id, *)
          contexts = @contexts + [id]
          JinjaItemNode.new contexts
        end
        # rubocop:enable Style/MethodMissing
      end
    end
  end
end
