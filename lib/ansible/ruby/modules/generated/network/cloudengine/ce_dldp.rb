# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global DLDP configuration on HUAWEI CloudEngine switches.
      class Ce_dldp < Base
        # @return [:enable, :disable, nil] Set global DLDP enable state.
        attribute :enable
        validates :enable, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enhance, :normal, nil] Set global DLDP work-mode.
        attribute :work_mode
        validates :work_mode, inclusion: {:in=>[:enhance, :normal], :message=>"%{value} needs to be :enhance, :normal"}, allow_nil: true

        # @return [Object, nil] Specifies the interval for sending Advertisement packets. The value is an integer ranging from 1 to 100, in seconds. The default interval for sending Advertisement packets is 5 seconds.
        attribute :time_internal

        # @return [:md5, :simple, :sha, :"hmac-sha256", :none, nil] Specifies authentication algorithm of DLDP.
        attribute :auth_mode
        validates :auth_mode, inclusion: {:in=>[:md5, :simple, :sha, :"hmac-sha256", :none], :message=>"%{value} needs to be :md5, :simple, :sha, :\"hmac-sha256\", :none"}, allow_nil: true

        # @return [Object, nil] Specifies authentication password. The value is a string of 1 to 16 case-sensitive plaintexts or 24/32/48/108/128 case-sensitive encrypted characters. The string excludes a question mark (?).
        attribute :auth_pwd

        # @return [:enable, :disable, nil] Specify whether reset DLDP state of disabled interfaces.
        attribute :reset
        validates :reset, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true
      end
    end
  end
end
