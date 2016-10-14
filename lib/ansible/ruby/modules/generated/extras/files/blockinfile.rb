# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will insert/update/remove a block of multi-line text surrounded by customizable marker lines.
      class Blockinfile < Base
        # @return [String] The file to modify.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:present, :absent, nil] Whether the block should be there or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The marker line template. "{mark}" will be replaced with "BEGIN" or "END".
        attribute :marker
        validates :marker, type: String

        # @return [String, nil] The text to insert inside the marker lines. If it's missing or an empty string, the block will be removed as if C(state) were specified to C(absent).
        attribute :block
        validates :block, type: String

        # @return [:EOF, :"*regex*", nil] If specified, the block will be inserted after the last match of specified regular expression. A special value is available; C(EOF) for inserting the block at the end of the file.  If specified regular expresion has no matches, C(EOF) will be used instead.
        attribute :insertafter
        validates :insertafter, inclusion: {:in=>[:EOF, :"*regex*"], :message=>"%{value} needs to be :EOF, :\"*regex*\""}, allow_nil: true

        # @return [:BOF, :"*regex*", nil] If specified, the block will be inserted before the last match of specified regular expression. A special value is available; C(BOF) for inserting the block at the beginning of the file.  If specified regular expresion has no matches, the block will be inserted at the end of the file.
        attribute :insertbefore
        validates :insertbefore, inclusion: {:in=>[:BOF, :"*regex*"], :message=>"%{value} needs to be :BOF, :\"*regex*\""}, allow_nil: true

        # @return [:yes, :no, nil] Create a new file if it doesn't exist.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links, if they exist, should be followed.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
