# see LICENSE.txt in project root
module Ansible
  module Ruby
    module DslBuilders
      class Unit < Base
        def initialize
          super()
          @temp_counter = 0
          @task_args = {}
        end

        def become(*args)
          value = _implicit_bool args
          @task_args[:become] = value
        end

        def become_user(value)
          @task_args[:become_user] = value
        end

        def changed_when(clause)
          @task_args[:changed_when] = clause
        end

        def failed_when(clause)
          @task_args[:failed_when] = clause
        end

        def ansible_when(clause)
          @task_args[:when] = clause
        end

        def with_dict(clause)
          @task_args[:with_dict] = clause
          return unless block_given?
          hash_key = JinjaItemNode.new('item.key')
          hash_value = JinjaItemNode.new('item.value')
          yield [hash_key, hash_value]
        end

        def with_items(clause)
          @task_args[:with_items] = clause
          yield JinjaItemNode.new if block_given?
        end

        def async(value)
          @task_args[:async] = value
        end

        def poll(value)
          @task_args[:poll] = value
        end

        def notify(value)
          @task_args[:notify] = value
        end

        def ignore_errors(*args)
          value = _implicit_bool args
          @task_args[:ignore_errors] = value
        end
      end
    end
  end
end
