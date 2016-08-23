# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_lineinfile < Base
        # @return [String] The path of the file to modify.,Note that the Windows path delimiter '\' must be escaped as '\\' (see examples below)
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] The regular expression to look for in every line of the file. For C(state=present), the pattern to replace if found; only the last line found will be replaced. For C(state=absent), the pattern of the line to remove.  Uses .NET compatible regular expressions; see U(https://msdn.microsoft.com/en-us/library/hs600312%28v=vs.110%29.aspx).
        attribute :regexp
        validates :regexp, type: String

        # @return [:present, :absent, nil] Whether the line should be there or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Required for C(state=present). The line to insert/replace into the file. If C(backrefs) is set, may contain backreferences that will get expanded with the C(regexp) capture groups if the regexp matches.
        attribute :line
        validates :line, type: String

        # @return [:yes, :no, nil] Used with C(state=present). If set, line can contain backreferences (both positional and named) that will get populated if the C(regexp) matches. This flag changes the operation of the module slightly; C(insertbefore) and C(insertafter) will be ignored, and if the C(regexp) doesn't match anywhere in the file, the file will be left unchanged.,If the C(regexp) does match, the last matching line will be replaced by the expanded line parameter.
        attribute :backrefs
        validates :backrefs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:EOF, :"*regex*", nil] Used with C(state=present). If specified, the line will be inserted after the last match of specified regular expression. A special value is available; C(EOF) for inserting the line at the end of the file.,If specified regular expression has no matches, EOF will be used instead.  May not be used with C(backrefs).
        attribute :insertafter
        validates :insertafter, inclusion: {:in=>[:EOF, :"*regex*"], :message=>"%{value} needs to be :EOF, :\"*regex*\""}, allow_nil: true

        # @return [:BOF, :"*regex*", nil] Used with C(state=present). If specified, the line will be inserted before the last match of specified regular expression. A value is available; C(BOF) for inserting the line at the beginning of the file.,If specified regular expression has no matches, the line will be inserted at the end of the file.  May not be used with C(backrefs).
        attribute :insertbefore
        validates :insertbefore, inclusion: {:in=>[:BOF, :"*regex*"], :message=>"%{value} needs to be :BOF, :\"*regex*\""}, allow_nil: true

        # @return [:yes, :no, nil] Used with C(state=present). If specified, the file will be created if it does not already exist. By default it will fail if the file is missing.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Validation to run before copying into place.  Use %s in the command to indicate the current file to validate.,The command is passed securely so shell features like expansion and pipes won't work.
        attribute :validate
        validates :validate, type: String

        # @return [String] Specifies the encoding of the source text file to operate on (and thus what the output encoding will be). The default of C(auto) will cause the module to auto-detect the encoding of the source file and ensure that the modified file is written with the same encoding.,An explicit encoding can be passed as a string that is a valid value to pass to the .NET framework System.Text.Encoding.GetEncoding() method - see U(https://msdn.microsoft.com/en-us/library/system.text.encoding%28v=vs.110%29.aspx).,This is mostly useful with C(create=yes) if you want to create a new file with a specific encoding. If C(create=yes) is specified without a specific encoding, the default encoding (UTF-8, no BOM) will be used.
        attribute :encoding
        validates :encoding, type: String

        # @return [:windows, :unix, nil] Specifies the line separator style to use for the modified file. This defaults to the windows line separator (
). Note that the indicated line separator will be used for file output regardless of the original line seperator that appears in the input file.
        attribute :newline
        validates :newline, inclusion: {:in=>[:windows, :unix], :message=>"%{value} needs to be :windows, :unix"}, allow_nil: true
      end
    end
  end
end
