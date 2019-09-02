# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about the Scaleway images available.
      class Scaleway_image_facts < Base
        # @return [:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"] Scaleway compute zone
        attribute :region
        validates :region, presence: true, expression_inclusion: {:in=>[:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"], :message=>"%{value} needs to be :ams1, :\"EMEA-NL-EVS\", :par1, :\"EMEA-FR-PAR1\""}
      end
    end
  end
end
