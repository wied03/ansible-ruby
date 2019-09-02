# frozen_string_literal: true

# VALIDATED_CHECKSUM: nFr3FJGA6oK1Uae7KPJFyd9bfNAH1RDEGDvwYjB6Wcs=

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
