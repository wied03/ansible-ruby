# see LICENSE.txt in project root
module Ansible
  module Ruby
    module DslBuilders
      class JinjaItemNode
        def initialize(contexts='item')
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

        def method_missing(id, *)
          contexts = @contexts + [id]
          JinjaItemNode.new contexts
        end
      end
    end
  end
end
