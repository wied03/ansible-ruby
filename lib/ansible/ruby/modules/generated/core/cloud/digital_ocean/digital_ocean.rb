# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete a droplet in DigitalOcean and optionally wait for it to be 'running', or deploy an SSH key.
      class Digital_ocean < Base
        # @return [:droplet, :ssh, nil] Which target you want to operate on.
        attribute :command
        validates :command, inclusion: {:in=>[:droplet, :ssh], :message=>"%{value} needs to be :droplet, :ssh"}, allow_nil: true

        # @return [:present, :active, :absent, :deleted, nil] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :active, :absent, :deleted], :message=>"%{value} needs to be :present, :active, :absent, :deleted"}, allow_nil: true

        # @return [String, nil] DigitalOcean api token.
        attribute :api_token
        validates :api_token, type: String

        # @return [Integer, nil] Numeric, the droplet id you want to operate on.
        attribute :id
        validates :id, type: Integer

        # @return [String, nil] String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key.
        attribute :name
        validates :name, type: String

        # @return [:yes, :no, nil] Bool, require unique hostnames.  By default, DigitalOcean allows multiple hosts with the same name.  Setting this to "yes" allows only one host per name.  Useful for idempotence.
        attribute :unique_name
        validates :unique_name, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] This is the slug of the size you would like the droplet created with.
        attribute :size_id
        validates :size_id, type: String

        # @return [String, nil] This is the slug of the image you would like the droplet created with.
        attribute :image_id
        validates :image_id, type: String

        # @return [String, nil] This is the slug of the region you would like your server to be created in.
        attribute :region_id
        validates :region_id, type: String

        # @return [Integer, nil] Optional, array of of SSH key (numeric) ID that you would like to be added to the server.
        attribute :ssh_key_ids
        validates :ssh_key_ids, type: Integer

        # @return [:yes, :no, nil] Bool, turn on virtio driver in droplet for improved network and storage I/O.
        attribute :virtio
        validates :virtio, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Bool, add an additional, private network interface to droplet for inter-droplet communication.
        attribute :private_networking
        validates :private_networking, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Optional, Boolean, enables backups for your droplet.
        attribute :backups_enabled
        validates :backups_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] opaque blob of data which is made available to the droplet
        attribute :user_data

        # @return [:yes, :no, nil] Optional, Boolean, enable IPv6 for your droplet.
        attribute :ipv6
        validates :ipv6, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Wait for the droplet to be in state 'running' before returning.  If wait is "no" an ip_address may not be returned.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [String, nil] The public SSH key you want to add to your account.
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String
      end
    end
  end
end
