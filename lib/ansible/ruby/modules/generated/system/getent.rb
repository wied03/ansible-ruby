# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Runs getent against one of it's various databases and returns information into the host's facts, in a getent_<database> prefixed variable.
      class Getent < Base
        # @return [String] The name of a getent database supported by the target system (passwd, group, hosts, etc).
        attribute :database
        validates :database, presence: true, type: String

        # @return [String, nil] Key from which to return values from the specified database, otherwise the full contents are returned.
        attribute :key
        validates :key, type: String

        # @return [String, nil] Character used to split the database values into lists/arrays such as ':' or '	', otherwise  it will try to pick one depending on the database.
        attribute :split
        validates :split, type: String

        # @return [:yes, :no, nil] If a supplied key is missing this will make the task fail if C(yes).
        attribute :fail_key
        validates :fail_key, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
