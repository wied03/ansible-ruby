# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the management of API Gateway APIs
      # Normally you should give the api_id since there is no other stable guaranteed unique identifier for the API.  If you do not give api_id then a new API will be create each time this is run.
      # Beware that there are very hard limits on the rate that you can call API Gateway's REST API.  You may need to patch your boto.  See https://github.com/boto/boto3/issues/876 and discuss with your AWS rep.
      # swagger_file and swagger_text are passed directly on to AWS transparently whilst swagger_dict is an ansible dict which is converted to JSON before the API definitions are uploaded.
      class Aws_api_gateway < Base
        # @return [String, nil] The ID of the API you want to manage.
        attribute :api_id
        validates :api_id, type: String

        # @return [:present, :absent, nil] NOT IMPLEMENTED Create or delete API - currently we always create.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] JSON or YAML file containing swagger definitions for API. Exactly one of swagger_file, swagger_text or swagger_dict must be present.
        attribute :swagger_file
        validates :swagger_file, type: String

        # @return [Object, nil] Swagger definitions for API in JSON or YAML as a string direct from playbook.
        attribute :swagger_text

        # @return [Object, nil] Swagger definitions API ansible dictionary which will be converted to JSON and uploaded.
        attribute :swagger_dict

        # @return [String, nil] The name of the stage the API should be deployed to.
        attribute :stage
        validates :stage, type: String

        # @return [String, nil] Description of the deployment - recorded and visible in the AWS console.
        attribute :deploy_desc
        validates :deploy_desc, type: String
      end
    end
  end
end
