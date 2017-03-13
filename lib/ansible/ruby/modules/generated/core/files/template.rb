# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Templates are processed by the Jinja2 templating language (U(http://jinja.pocoo.org/docs/)) - documentation on the template formatting can be found in the Template Designer Documentation (U(http://jinja.pocoo.org/docs/templates/)).
      # Six additional variables can be used in templates: C(ansible_managed) (configurable via the C(defaults) section of C(ansible.cfg)) contains a string which can be used to describe the template name, host, modification time of the template file and the owner uid, C(template_host) contains the node name of the template's machine, C(template_uid) the owner, C(template_path) the absolute path of the template, C(template_fullpath) is the absolute path of the template, and C(template_run_date) is the date that the template was rendered. Note that including a string that uses a date in the template will result in the template being marked 'changed' each time.
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

        # @return [:yes, :no, nil] the default is C(yes), which will replace the remote file when contents are different than the source.  If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
