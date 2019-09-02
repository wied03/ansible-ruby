# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided images.
      # These images can be either of type C(distribution), C(application) and C(private).
      class Digital_ocean_image_facts < Base
        # @return [:all, :application, :distribution, :private, nil] Specifies the type of image facts to be retrived.,If set to C(application), then facts are gathered related to all application images.,If set to C(distribution), then facts are gathered related to all distribution images.,If set to C(private), then facts are gathered related to all private images.,If not set to any of above, then facts are gathered related to all images.
        attribute :image_type
        validates :image_type, expression_inclusion: {:in=>[:all, :application, :distribution, :private], :message=>"%{value} needs to be :all, :application, :distribution, :private"}, allow_nil: true
      end
    end
  end
end
