# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify ONTAP SVM Options
      # Only Options that appear on "vserver options show" can be set
      class Na_ontap_svm_options < Base
        # @return [String, nil] Name of the option.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Value of the option.,Value must be in quote
        attribute :value
        validates :value, type: String

        # @return [String] The name of the vserver to which this option belongs to.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
