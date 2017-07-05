# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows Ansible to interface with the PubNub BLOCKS infrastructure by providing the following operations: create / remove, start / stop and rename for blocks and create / modify / remove for event handlers
      class Pubnub_blocks < Base
        # @return [String, nil] Email from account for which new session should be started.,Not required if C(cache) contains result of previous module call (in same play).
        attribute :email
        validates :email, type: String

        # @return [String, nil] Password which match to account to which specified C(email) belong.,Not required if C(cache) contains result of previous module call (in same play).
        attribute :password
        validates :password, type: String

        # @return [Object, nil] In case if single play use blocks management module few times it is preferred to enabled 'caching' by making previous module to share gathered artifacts and pass them to this parameter.\r\n
        attribute :cache

        # @return [String] Name of target PubNub application for which blocks configuration on specific C(keyset) will be done.
        attribute :application
        validates :application, presence: true, type: String

        # @return [String] Name of application's keys set which is bound to managed blocks.
        attribute :keyset
        validates :keyset, presence: true, type: String

        # @return [:started, :stopped, :present, :absent, nil] Intended block state after event handlers creation / update process will be completed.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :present, :absent], :message=>"%{value} needs to be :started, :stopped, :present, :absent"}, allow_nil: true

        # @return [String] Name of managed block which will be later visible on admin.pubnub.com.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Short block description which will be later visible on admin.pubnub.com. Used only if block doesn't exists and won't change description for existing block.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] List of event handlers which should be updated for specified block C(name).,Each entry for new event handler should contain: C(name), C(src), C(channels), C(event). C(name) used as event handler name which can be used later to make changes to it.,C(src) is full path to file with event handler code.,C(channels) is name of channel from which event handler is waiting for events.,C(event) is type of event which is able to trigger event handler: I(js-before-publish), I(js-after-publish), I(js-after-presence).,Each entry for existing handlers should contain C(name) (so target handler can be identified). Rest parameters (C(src), C(channels) and C(event)) can be added if changes required for them.,It is possible to rename event handler by adding C(changes) key to event handler payload and pass dictionary, which will contain single key C(name), where new name should be passed.,To remove particular event handler it is possible to set C(state) for it to C(absent) and it will be removed.
        attribute :event_handlers

        # @return [Object, nil] List of fields which should be changed by block itself (doesn't affect any event handlers).,Possible options for change is: C(name).
        attribute :changes

        # @return [Boolean, nil] This key allow to try skip certificates check when performing REST API calls. Sometimes host may have issues with certificates on it and this will cause problems to call PubNub REST API.,If check should be ignored C(False) should be passed to this parameter.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
