# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Templates are processed by the Jinja2 templating language (U(http://jinja.pocoo.org/docs/)) - documentation on the template formatting can be found in the Template Designer Documentation (U(http://jinja.pocoo.org/docs/templates/)).
      # Six additional variables can be used in templates: C(ansible_managed) (configurable via the C(defaults) section of C(ansible.cfg)) contains a string which can be used to describe the template name, host, modification time of the template file and the owner uid, C(template_host) contains the node name of the template's machine, C(template_uid) the owner, C(template_path) the absolute path of the template, C(template_fullpath) is the absolute path of the template, and C(template_run_date) is the date that the template was rendered. Note that including a string that uses a date in the template will result in the template being marked 'changed' each time.
      class Win_template < Base
        # @return [String] Path of a Jinja2 formatted template on the local server. This can be a relative or absolute path.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Location to render the template to on the remote machine.
        attribute :dest
        validates :dest, presence: true, type: String

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

        # @return [String, nil] If this is set to C(yes) the first newline after a block is removed (block, not variable tag!).
        attribute :trim_blocks
        validates :trim_blocks, type: String

        # @return [String, nil] If C(yes), will replace the remote file when contents are different from the source.,If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, type: String
      end
    end
  end
end
