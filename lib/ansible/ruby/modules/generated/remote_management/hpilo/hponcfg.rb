# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This modules configures the HP iLO interface using hponcfg.
      class Hponcfg < Base
        # @return [Object] The XML file as accepted by hponcfg.
        attribute :path
        validates :path, presence: true

        # @return [Object, nil] The minimum firmware level needed.
        attribute :minfw

        # @return [String, nil] Path to the hponcfg executable (`hponcfg` which uses $PATH).
        attribute :executable
        validates :executable, type: String

        # @return [Boolean, nil] Run hponcfg in verbose mode (-v).
        attribute :verbose
        validates :verbose, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
