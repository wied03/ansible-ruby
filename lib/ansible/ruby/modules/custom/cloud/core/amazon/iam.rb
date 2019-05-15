# frozen_string_literal: true
# VALIDATED_CHECKSUM: RVnYpot5YVpubwik4e+4p8OPS9D0nUKTVsaimhNtFGU=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/iam'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Iam
        include Helpers::Aws
      end
    end
  end
end
