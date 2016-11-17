# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Returns list of matching Launch Configurations for a given name, along with other useful information
      # Results can be sorted and sliced
      # It depends on boto
      # Based on the work by Tom Bamford (https://github.com/tombamford)
      class Ec2_lc_find < Base
        # @return [Object] The AWS region to use.
        attribute :region
        validates :region, presence: true

        # @return [String] A Launch Configuration to match,It'll be compiled as regex
        attribute :name_regex
        validates :name_regex, presence: true, type: String

        # @return [:ascending, :descending, nil] Order in which to sort results.
        attribute :sort_order
        validates :sort_order, inclusion: {:in=>[:ascending, :descending], :message=>"%{value} needs to be :ascending, :descending"}, allow_nil: true

        # @return [Integer, nil] How many results to show.,Corresponds to Python slice notation like list[:limit].
        attribute :limit
        validates :limit, type: Integer
      end
    end
  end
end
