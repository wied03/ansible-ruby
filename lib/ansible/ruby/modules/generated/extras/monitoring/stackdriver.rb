# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send code deploy and annotation events to Stackdriver
      class Stackdriver < Base
        # @return [String] API key.
        attribute :key
        validates :key, presence: true, type: String

        # @return [:annotation, :deploy, nil] The type of event to send, either annotation or deploy
        attribute :event
        validates :event, inclusion: {:in=>[:annotation, :deploy], :message=>"%{value} needs to be :annotation, :deploy"}, allow_nil: true

        # @return [String, nil] The revision of the code that was deployed. Required for deploy events
        attribute :revision_id
        validates :revision_id, type: String

        # @return [String, nil] The person or robot responsible for deploying the code
        attribute :deployed_by
        validates :deployed_by, type: String

        # @return [String, nil] The environment code was deployed to. (ie: development, staging, production)
        attribute :deployed_to
        validates :deployed_to, type: String

        # @return [String, nil] The repository (or project) deployed
        attribute :repository
        validates :repository, type: String

        # @return [String, nil] The contents of the annotation message, in plain text.  Limited to 256 characters. Required for annotation.
        attribute :msg
        validates :msg, type: String

        # @return [String, nil] The person or robot who the annotation should be attributed to.
        attribute :annotated_by
        validates :annotated_by, type: String

        # @return [:INFO, :WARN, :ERROR, nil] one of INFO/WARN/ERROR, defaults to INFO if not supplied.  May affect display.
        attribute :level
        validates :level, inclusion: {:in=>[:INFO, :WARN, :ERROR], :message=>"%{value} needs to be :INFO, :WARN, :ERROR"}, allow_nil: true

        # @return [String, nil] id of an EC2 instance that this event should be attached to, which will limit the contexts where this event is shown
        attribute :instance_id
        validates :instance_id, type: String

        # @return [Object, nil] Unix timestamp of where the event should appear in the timeline, defaults to now. Be careful with this.
        attribute :event_epoch
      end
    end
  end
end
