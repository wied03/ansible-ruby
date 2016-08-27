# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Models
      class Inclusion < Base
        attribute :file
        validates :file, presence: true, type: String
        attribute :static
        validates :static, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :variables
        validates :variables, type: Hash

        def to_h
          initial = super
          # gets rendered as include
          result = {
            include: initial[:file]
          }
          # a more intuitive name
          vars = initial[:variables]
          result[:vars] = vars if vars
          result[:static] = static unless static.is_a?(NilClass)
          result
        end
      end
    end
  end
end
