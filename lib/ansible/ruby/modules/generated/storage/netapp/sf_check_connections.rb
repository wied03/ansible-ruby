# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to test the management connection to the cluster.
      # The test pings the MVIP and SVIP, and executes a simple API method to verify connectivity.
      class Sf_check_connections < Base
        # @return [:svip, :mvip, nil] Skip checking connection to SVIP or MVIP.
        attribute :skip
        validates :skip, expression_inclusion: {:in=>[:svip, :mvip], :message=>"%{value} needs to be :svip, :mvip"}, allow_nil: true

        # @return [Object, nil] Optionally, use to test connection of a different MVIP.,This is not needed to test the connection to the target cluster.
        attribute :mvip

        # @return [Object, nil] Optionally, use to test connection of a different SVIP.,This is not needed to test the connection to the target cluster.
        attribute :svip
      end
    end
  end
end
