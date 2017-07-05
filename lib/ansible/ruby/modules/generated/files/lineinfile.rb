# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will search a file for a line, and ensure that it is present or absent.
      # This is primarily useful when you want to change a single line in a file only. See the M(replace) module if you want to change multiple, similar lines or check M(blockinfile) if you want to insert/update/remove a block of lines in a file. For other cases, see the M(copy) or M(template) modules.
      class Lineinfile < Base
        # @return [String] The file to modify.,Before 2.3 this option was only usable as I(dest), I(destfile) and I(name).
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] The regular expression to look for in every line of the file. For C(state=present), the pattern to replace if found; only the last line found will be replaced. For C(state=absent), the pattern of the line to remove.  Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
        attribute :regexp
        validates :regexp, type: String

        # @return [:present, :absent, nil] Whether the line should be there or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Required for C(state=present). The line to insert/replace into the file. If C(backrefs) is set, may contain backreferences that will get expanded with the C(regexp) capture groups if the regexp matches.
        attribute :line
        validates :line, type: String

        # @return [:yes, :no, nil] Used with C(state=present). If set, line can contain backreferences (both positional and named) that will get populated if the C(regexp) matches. This flag changes the operation of the module slightly; C(insertbefore) and C(insertafter) will be ignored, and if the C(regexp) doesn't match anywhere in the file, the file will be left unchanged. If the C(regexp) does match, the last matching line will be replaced by the expanded line parameter.
        attribute :backrefs
        validates :backrefs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:EOF, :"*regex*", nil] Used with C(state=present). If specified, the line will be inserted after the last match of specified regular expression. A special value is available; C(EOF) for inserting the line at the end of the file. If specified regular expression has no matches, EOF will be used instead. May not be used with C(backrefs).
        attribute :insertafter
        validates :insertafter, inclusion: {:in=>[:EOF, :"*regex*"], :message=>"%{value} needs to be :EOF, :\"*regex*\""}, allow_nil: true

        # @return [:BOF, :"*regex*", nil] Used with C(state=present). If specified, the line will be inserted before the last match of specified regular expression. A value is available; C(BOF) for inserting the line at the beginning of the file. If specified regular expression has no matches, the line will be inserted at the end of the file.  May not be used with C(backrefs).
        attribute :insertbefore
        validates :insertbefore, inclusion: {:in=>[:BOF, :"*regex*"], :message=>"%{value} needs to be :BOF, :\"*regex*\""}, allow_nil: true

        # @return [:yes, :no, nil] Used with C(state=present). If specified, the file will be created if it does not already exist. By default it will fail if the file is missing.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] All arguments accepted by the M(file) module also work here.
        attribute :others
      end
    end
  end
end
