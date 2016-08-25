# see LICENSE.txt in project root

require 'ansible/ruby/dsl_builders/jinja_item_node'

module Ansible
  module Ruby
    module DslBuilders
      module JinjaItem
        def jinja_item
          block = lambda do |mode|
            # Don't want to override any dict dependency
            @jinja_item_mode = mode unless @jinja_item_mode == :dict
          end
          JinjaItemNode.new block
        end
      end
    end
  end
end
