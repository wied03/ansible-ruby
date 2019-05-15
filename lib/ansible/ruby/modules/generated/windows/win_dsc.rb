# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a resource using PowerShell DSC.
      # Requires PowerShell version 5.0 or newer.
      # Most of the options for this module are dynamic and will vary depending on the DSC Resource specified in I(resource_name).
      # See :doc:`/user_guide/windows_dsc` for more information on how to use this module.
      class Win_dsc < Base
        # @return [String] The name of the DSC Resource to use.,Must be accessible to PowerShell using any of the default paths.
        attribute :resource_name
        validates :resource_name, presence: true, type: String

        # @return [String, nil] Can be used to configure the exact version of the DSC resource to be invoked.,Useful if the target node has multiple versions installed of the module containing the DSC resource.,If not specified, the module will follow standard PowerShell convention and use the highest version available.
        attribute :module_version
        validates :module_version, type: String

        # @return [Object] The M(win_dsc) module takes in multiple free form options based on the DSC resource being invoked by I(resource_name).,There is no option actually named C(free_form) so see the examples.,This module will try and convert the option to the correct type required by the DSC resource and throw a warning if it fails.,If the type of the DSC resource option is a C(CimInstance) or C(CimInstance[]), this means the value should be a dictionary or list of dictionaries based on the values required by that option.,If the type of the DSC resource option is a C(PSCredential) then there needs to be 2 options set in the Ansible task definition suffixed with C(_username) and C(_password).,If the type of the DSC resource option is an array, then a list should be provided but a comma separated string also work. Use a list where possible as no escaping is required and it works with more complex types list C(CimInstance[]).
        attribute :free_form
        validates :free_form, presence: true
      end
    end
  end
end
