# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove a website on a Webfaction host.  Further documentation at https://github.com/quentinsf/ansible-webfaction.
      class Webfaction_site < Base
        # @return [String] The name of the website
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the website should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The webfaction host on which the site should be created.
        attribute :host
        validates :host, presence: true, type: String

        # @return [:yes, :no, nil] Whether or not to use HTTPS
        attribute :https
        validates :https, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] A mapping of URLs to apps
        attribute :site_apps

        # @return [Object, nil] A list of subdomains associated with this site.
        attribute :subdomains

        # @return [String] The webfaction account to use
        attribute :login_name
        validates :login_name, presence: true, type: String

        # @return [String] The webfaction password to use
        attribute :login_password
        validates :login_password, presence: true, type: String
      end
    end
  end
end
