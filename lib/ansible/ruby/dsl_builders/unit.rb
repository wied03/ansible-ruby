# frozen_string_literal: true
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

        def ansible_when(clause)
          @task_args[:when] = clause
        end

        def ignore_errors(*args)
          value = _implicit_bool args
          @task_args[:ignore_errors] = value
        end
      end
    end
  end
end
