# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Executes the given operation on the YANG object, using CPS API in the networking device running OpenSwitch (OPX). It uses the YANG models provided in https://github.com/open-switch/opx-base-model.
      class Opx_cps < Base
        # @return [String, nil] Yang path to be configured.
        attribute :module_name
        validates :module_name, type: String

        # @return [Object, nil] Attribute Yang type.
        attribute :attr_type

        # @return [Hash, nil] Attribute Yang path and their corresponding data.
        attribute :attr_data
        validates :attr_data, type: Hash

        # @return [:delete, :create, :set, :action, :get, nil] Operation to be performed on the object.
        attribute :operation
        validates :operation, expression_inclusion: {:in=>[:delete, :create, :set, :action, :get], :message=>"%{value} needs to be :delete, :create, :set, :action, :get"}, allow_nil: true

        # @return [:yes, :no, nil] Queries/Writes the specified yang path from/to the db.
        attribute :db
        validates :db, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:target, :observed, :proposed, :realtime, :registration, :running, :startup, nil] A qualifier provides the type of object data to retrieve or act on.
        attribute :qualifier
        validates :qualifier, expression_inclusion: {:in=>[:target, :observed, :proposed, :realtime, :registration, :running, :startup], :message=>"%{value} needs to be :target, :observed, :proposed, :realtime, :registration, :running, :startup"}, allow_nil: true

        # @return [:yes, :no, nil] Attempts to force the auto-commit event to the specified yang object.
        attribute :commit_event
        validates :commit_event, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
