# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami_search < Base
        # @return [:ubuntu] Linux distribution (e.g., C(ubuntu))
        attribute :distro
        validates :distro, presence: true, inclusion: {:in=>[:ubuntu], :message=>"%{value} needs to be :ubuntu"}

        # @return [Object] short name of the release (e.g., C(precise))
        attribute :release
        validates :release, presence: true

        # @return [:server, :desktop, nil] Type of release.
        attribute :stream
        validates :stream, inclusion: {:in=>[:server, :desktop], :message=>"%{value} needs to be :server, :desktop"}, allow_nil: true

        # @return [:ebs, :"ebs-io1", :"ebs-ssd", :"instance-store", nil] Back-end store for instance
        attribute :store
        validates :store, inclusion: {:in=>[:ebs, :"ebs-io1", :"ebs-ssd", :"instance-store"], :message=>"%{value} needs to be :ebs, :\"ebs-io1\", :\"ebs-ssd\", :\"instance-store\""}, allow_nil: true

        # @return [:i386, :amd64, nil] CPU architecture
        attribute :arch
        validates :arch, inclusion: {:in=>[:i386, :amd64], :message=>"%{value} needs to be :i386, :amd64"}, allow_nil: true

        # @return [:"ap-northeast-1", :"ap-southeast-1", :"ap-southeast-2", :"eu-central-1", :"eu-west-1", :"sa-east-1", :"us-east-1", :"us-west-1", :"us-west-2", :"us-gov-west-1", nil] EC2 region
        attribute :region
        validates :region, inclusion: {:in=>[:"ap-northeast-1", :"ap-southeast-1", :"ap-southeast-2", :"eu-central-1", :"eu-west-1", :"sa-east-1", :"us-east-1", :"us-west-1", :"us-west-2", :"us-gov-west-1"], :message=>"%{value} needs to be :\"ap-northeast-1\", :\"ap-southeast-1\", :\"ap-southeast-2\", :\"eu-central-1\", :\"eu-west-1\", :\"sa-east-1\", :\"us-east-1\", :\"us-west-1\", :\"us-west-2\", :\"us-gov-west-1\""}, allow_nil: true

        # @return [:paravirtual, :hvm, nil] virutalization type
        attribute :virt
        validates :virt, inclusion: {:in=>[:paravirtual, :hvm], :message=>"%{value} needs to be :paravirtual, :hvm"}, allow_nil: true
      end
    end
  end
end
