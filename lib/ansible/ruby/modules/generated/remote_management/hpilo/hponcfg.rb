# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This modules configures the HP iLO interface using hponcfg.
      class Hponcfg < Base
        # @return [Object] The XML file as accepted by hponcfg
        attribute :path
        validates :path, presence: true

        # @return [Object, nil] The minimum firmware level needed
        attribute :minfw
      end
    end
  end
end
