# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the creation and removal of volume to host mappings for NetApp E-series storage arrays.
      class Netapp_e_lun_mapping < Base
        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The storage system array identifier.
        attribute :ssid
        validates :ssid, type: Integer

        # @return [Integer, nil] The LUN number you wish to give the mapping,If the supplied I(volume_name) is associated with a different LUN, it will be updated to what is supplied here.
        attribute :lun
        validates :lun, type: Integer

        # @return [String, nil] The name of host or hostgroup you wish to assign to the mapping,If omitted, the default hostgroup is used.,If the supplied I(volume_name) is associated with a different target, it will be updated to what is supplied here.
        attribute :target
        validates :target, type: String

        # @return [String] The name of the volume you wish to include in the mapping.
        attribute :volume_name
        validates :volume_name, presence: true, type: String

        # @return [:host, :group, nil] Whether the target is a host or group.,Required if supplying an explicit target.
        attribute :target_type
        validates :target_type, inclusion: {:in=>[:host, :group], :message=>"%{value} needs to be :host, :group"}, allow_nil: true

        # @return [:present, :absent] Present will ensure the mapping exists, absent will remove the mapping.,All parameters I(lun), I(target), I(target_type) and I(volume_name) must still be supplied.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] The full API url. Example: http://ENDPOINT:8080/devmgr/v2,This can optionally be set via an environment variable, API_URL
        attribute :api_url
        validates :api_url, type: String

        # @return [String, nil] The username used to authenticate against the API. This can optionally be set via an environment variable, API_USERNAME
        attribute :api_username
        validates :api_username, type: String

        # @return [String, nil] The password used to authenticate against the API. This can optionally be set via an environment variable, API_PASSWORD
        attribute :api_password
        validates :api_password, type: String
      end
    end
  end
end
