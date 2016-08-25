# see LICENSE.txt in project root

require 'ansible/ruby/dsl_builders/jinja_item_node'

module Ansible
  module Ruby
    module DslBuilders
      module JinjaItem
        def jinja_item
          JinjaItemNode.new lambda { |mode| @jinja_item_mode = mode }
        end
      end
    end
  end
end
