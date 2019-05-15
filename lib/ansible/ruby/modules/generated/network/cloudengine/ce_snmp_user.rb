# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP user configurations on CloudEngine switches.
      class Ce_snmp_user < Base
        # @return [Object, nil] Access control list number.
        attribute :acl_number

        # @return [Object, nil] Unique name to identify the USM user.
        attribute :usm_user_name

        # @return [Object, nil] Unique name to identify the local user.
        attribute :aaa_local_user

        # @return [Object, nil] Remote engine id of the USM user.
        attribute :remote_engine_id

        # @return [Object, nil] Name of the group where user belongs to.
        attribute :user_group

        # @return [:noAuth, :md5, :sha, nil] Authentication protocol.
        attribute :auth_protocol
        validates :auth_protocol, inclusion: {:in=>[:noAuth, :md5, :sha], :message=>"%{value} needs to be :noAuth, :md5, :sha"}, allow_nil: true

        # @return [Object, nil] The authentication password. Password length, 8-255 characters.
        attribute :auth_key

        # @return [:noPriv, :des56, :"3des168", :aes128, :aes192, :aes256, nil] Encryption protocol.
        attribute :priv_protocol
        validates :priv_protocol, inclusion: {:in=>[:noPriv, :des56, :"3des168", :aes128, :aes192, :aes256], :message=>"%{value} needs to be :noPriv, :des56, :\"3des168\", :aes128, :aes192, :aes256"}, allow_nil: true

        # @return [Object, nil] The encryption password. Password length 8-255 characters.
        attribute :priv_key
      end
    end
  end
end
