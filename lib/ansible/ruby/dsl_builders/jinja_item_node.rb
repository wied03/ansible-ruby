# see LICENSE.txt in project root
module Ansible
  module Ruby
    module DslBuilders
      class JinjaItemNode
        def initialize(mode_setter, mode = :ref_only, contexts='item')
          @contexts = [*contexts]
          @mode_setter = mode_setter
          @mode = mode
          mode_setter[@mode]
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
          JinjaItemNode.new @mode_setter, :dict, contexts
        end
      end
    end
  end
end
