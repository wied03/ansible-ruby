# See LICENSE.txt for license
module Ansible
  module Ruby
    module Modules
      module FreeForm
        class << self
          def included(base)
            klass_name = base.name.demodulize.underscore
            base.validates :free_form,
                           presence: { message: "Argument directly after #{klass_name} e.g. #{klass_name}(arg) cannot be blank" }
            base.validates :free_form,
                           type: {
                             type: String,
                             message: "#{klass_name}(%{value}), %{value} is expected to be a String but was a %{type}"
                           }
          end
        end

        def to_h
          result = super
          # base module will always have 1 key that is the module
          module_key = result.keys[0]
          args = result[module_key]
          free_form_arg = args.delete :free_form
          {
            module_key => free_form_arg,
            args: args
          }
        end
      end
    end
  end
end
