# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SmartOS virtual machine images through imgadm(1M)
      class Imgadm < Base
        # @return [Boolean, nil] Force a given operation (where supported by imgadm(1M)).
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] zpool to import to or delete images from.
        attribute :pool
        validates :pool, type: String

        # @return [String, nil] URI for the image source.
        attribute :source
        validates :source, type: String

        # @return [:present, :absent, :deleted, :imported, :updated, :vacuumed] State the object operated on should be in. C(imported) is an alias for for C(present) and C(deleted) for C(absent). When set to C(vacuumed) and C(uuid) to C(*), it will remove all unused images.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :deleted, :imported, :updated, :vacuumed], :message=>"%{value} needs to be :present, :absent, :deleted, :imported, :updated, :vacuumed"}

        # @return [:imgapi, :docker, :dsapi, nil] Type for image sources.
        attribute :type
        validates :type, inclusion: {:in=>[:imgapi, :docker, :dsapi], :message=>"%{value} needs to be :imgapi, :docker, :dsapi"}, allow_nil: true

        # @return [String, nil] Image UUID. Can either be a full UUID or C(*) for all images.
        attribute :uuid
        validates :uuid, type: String
      end
    end
  end
end
