# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Templates are processed by the Jinja2 templating language (U(http://jinja.pocoo.org/docs/)) - documentation on the template formatting can be found in the Template Designer Documentation (U(http://jinja.pocoo.org/docs/templates/)).
      # Six additional variables can be used in templates: C(ansible_managed) (configurable via the C(defaults) section of C(ansible.cfg)) contains a string which can be used to describe the template name, host, modification time of the template file and the owner uid. C(template_host) contains the node name of the template's machine. C(template_uid) is the numeric user id of the owner. C(template_path) is the path of the template. C(template_fullpath) is the absolute path of the template. C(template_run_date) is the date that the template was rendered.
      class Template < Base
        # @return [String] Path of a Jinja2 formatted template on the Ansible controller. This can be a relative or absolute path.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Location to render the template to on the remote machine.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:"\\n", :"\\r", :"\\r\\n", nil] Specify the newline sequence to use for templating files.
        attribute :newline_sequence
        validates :newline_sequence, inclusion: {:in=>[:"\\n", :"\\r", :"\\r\\n"], :message=>"%{value} needs to be :\"\\\\n\", :\"\\\\r\", :\"\\\\r\\\\n\""}, allow_nil: true

        # @return [String, nil] The string marking the beginning of a block.
        attribute :block_start_string
        validates :block_start_string, type: String

        # @return [String, nil] The string marking the end of a block.
        attribute :block_end_string
        validates :block_end_string, type: String

        # @return [String, nil] The string marking the beginning of a print statement.
        attribute :variable_start_string
        validates :variable_start_string, type: String

        # @return [String, nil] The string marking the end of a print statement.
        attribute :variable_end_string
        validates :variable_end_string, type: String

        # @return [:yes, :no, nil] If this is set to True the first newline after a block is removed (block, not variable tag!).
        attribute :trim_blocks
        validates :trim_blocks, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If this is set to True leading spaces and tabs are stripped from the start of a line to a block. Setting this option to True requires Jinja2 version >=2.7.
        attribute :lstrip_blocks
        validates :lstrip_blocks, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] the default is C(yes), which will replace the remote file when contents are different than the source.  If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links in the destination, if they exist, should be followed.,Previous to Ansible 2.4, this was hardcoded as C(yes).
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, Array<String>, String, nil] Mode the file or directory should be. For those used to I(/usr/bin/chmod) remember that modes are actually octal numbers.  You must either add a leading zero so that Ansible's YAML parser knows it is an octal number (like C(0644) or C(01777)) or quote it (like C('644') or C('1777')) so Ansible receives a string and can do its own conversion from string into number.  Giving Ansible a number without following one of these rules will end up with a decimal number which will have unexpected results.  As of version 1.8, the mode may be specified as a symbolic mode (for example, C(u+rwx) or C(u=rw,g=r,o=r)).  As of version 2.6, the mode may also be the special string C(preserve).  C(preserve) means that the file will be given the same permissions as the source file.
        attribute :mode
        validates :mode, type: TypeGeneric.new(String)

        # @return [String, nil] Overrides the encoding used to write the template file defined by C(dest).,It defaults to C('utf-8'), but any encoding supported by python can be used.,The source template file must always be encoded using C('utf-8'), for homogeneity.
        attribute :output_encoding
        validates :output_encoding, type: String
      end
    end
  end
end
