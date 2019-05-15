# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use the OpenShift Python client to perform CRUD operations on K8s objects.
      # Pass the object definition from a source file or inline. See examples for reading files and using Jinja templates.
      # Access to the full range of K8s APIs.
      # Use the M(k8s_facts) module to obtain a list of items about an object of type C(kind)
      # Authenticate using either a config file, certificates, password or token.
      # Supports check mode.
      class K8s < Base
        # @return [:json, :merge, :"strategic-merge", nil] Whether to override the default patch merge approach with a specific type. By the default, the strategic merge will typically be used.,For example, Custom Resource Definitions typically aren't updatable by the usual strategic merge. You may want to use C(merge) if you see "strategic merge patch format is not supported",See U(https://kubernetes.io/docs/tasks/run-application/update-api-object-kubectl-patch/#use-a-json-merge-patch-to-update-a-deployment),Requires openshift >= 0.6.2,If more than one merge_type is given, the merge_types will be tried in order,If openshift >= 0.6.2, this defaults to C(['strategic-merge', 'merge']), which is ideal for using the same parameters on resource kinds that combine Custom Resources and built-in resources. For openshift < 0.6.2, the default is simply C(strategic-merge).
        attribute :merge_type
        validates :merge_type, inclusion: {:in=>[:json, :merge, :"strategic-merge"], :message=>"%{value} needs to be :json, :merge, :\"strategic-merge\""}, allow_nil: true
      end
    end
  end
end
