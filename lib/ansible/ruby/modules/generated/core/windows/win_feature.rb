# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_feature < Base
        # @return [Object] Names of roles or features to install as a single feature or a comma-separated list of features
        attribute :name
        validates :name, presence: true

        # @return [String] State of the features or roles on the system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Restarts the computer automatically when installation is complete, if restarting is required by the roles or features installed.
        attribute :restart
        validates :restart, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] Adds all subfeatures of the specified feature
        attribute :include_sub_features
        validates :include_sub_features, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] Adds the corresponding management tools to the specified feature
        attribute :include_management_tools
        validates :include_management_tools, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] Specify a source to install the feature from
        attribute :source
        validates :source, inclusion: {:in=>[:" {driveletter}:\\sources\\sxs", :" {IP}\\Share\\sources\\sxs"], :message=>"%{value} needs to be :\" {driveletter}:\\\\sources\\\\sxs\", :\" {IP}\\\\Share\\\\sources\\\\sxs\""}, allow_nil: true
      end
    end
  end
end
