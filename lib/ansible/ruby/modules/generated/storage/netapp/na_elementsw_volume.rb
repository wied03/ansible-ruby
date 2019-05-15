# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update volumes on ElementSW
      class Na_elementsw_volume < Base
        # @return [:present, :absent] Whether the specified volume should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the volume to manage.,It accepts volume_name or volume_id
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Account ID for the owner of this volume.,It accepts Account_id or Account_name
        attribute :account_id
        validates :account_id, presence: true, type: Integer

        # @return [Boolean, nil] Required when C(state=present),Should the volume provide 512-byte sector emulation?
        attribute :enable512e
        validates :enable512e, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] Initial quality of service settings for this volume. Configure as dict in playbooks.
        attribute :qos
        validates :qos, type: Hash

        # @return [Object, nil] A YAML dictionary of attributes that you would like to apply on this volume.
        attribute :attributes

        # @return [Integer, nil] The size of the volume in (size_unit).,Required when C(state = present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [:readOnly, :readWrite, :locked, :replicationTarget, nil] Access allowed for the volume.,readOnly           Only read operations are allowed.,readWrite          Reads and writes are allowed.,locked             No reads or writes are allowed.,replicationTarget  Identify a volume as the target volume for a paired set of volumes.,If the volume is not paired, the access status is locked.,If unspecified, the access settings of the clone will be the same as the source.
        attribute :access
        validates :access, inclusion: {:in=>[:readOnly, :readWrite, :locked, :replicationTarget], :message=>"%{value} needs to be :readOnly, :readWrite, :locked, :replicationTarget"}, allow_nil: true

        # @return [String, nil] ElementSW access account password
        attribute :password
        validates :password, type: String

        # @return [String, nil] ElementSW access account user-name
        attribute :username
        validates :username, type: String
      end
    end
  end
end
