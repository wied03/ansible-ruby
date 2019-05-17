# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will insert/update/remove a block of multi-line text surrounded by customizable marker lines.
      class Blockinfile < Base
        # @return [String] The file to modify.,Before 2.3 this option was only usable as I(dest), I(destfile) and I(name).
        attribute :path
        validates :path, presence: true, type: String

        # @return [:absent, :present, nil] Whether the block should be there or not.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The marker line template. "{mark}" will be replaced with the values in marker_begin (default="BEGIN") and marker_end (default="END").
        attribute :marker
        validates :marker, type: String

        # @return [String, nil] The text to insert inside the marker lines. If it's missing or an empty string, the block will be removed as if C(state) were specified to C(absent).
        attribute :block
        validates :block, type: String

        # @return [:EOF, :"*regex*", nil] If specified, the block will be inserted after the last match of specified regular expression. A special value is available; C(EOF) for inserting the block at the end of the file.  If specified regular expression has no matches, C(EOF) will be used instead.
        attribute :insertafter
        validates :insertafter, inclusion: {:in=>[:EOF, :"*regex*"], :message=>"%{value} needs to be :EOF, :\"*regex*\""}, allow_nil: true

        # @return [:BOF, :"*regex*", nil] If specified, the block will be inserted before the last match of specified regular expression. A special value is available; C(BOF) for inserting the block at the beginning of the file.  If specified regular expression has no matches, the block will be inserted at the end of the file.
        attribute :insertbefore
        validates :insertbefore, inclusion: {:in=>[:BOF, :"*regex*"], :message=>"%{value} needs to be :BOF, :\"*regex*\""}, allow_nil: true

        # @return [:yes, :no, nil] Create a new file if it doesn't exist.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] This will be inserted at {mark} in the opening ansible block marker.
        attribute :marker_begin
        validates :marker_begin, type: String

        # @return [String, nil] This will be inserted at {mark} in the closing ansible block marker.
        attribute :marker_end
        validates :marker_end, type: String
      end
    end
  end
end
