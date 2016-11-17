# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Meta tasks are a special kind of task which can influence Ansible internal execution or state. Prior to Ansible 2.0, the only meta option available was `flush_handlers`. As of 2.2, there are five meta tasks which can be used. Meta tasks can be used anywhere within your playbook.
      class Meta < Base
        # @return [:noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play] This module takes a free form command, as a string. There's not an actual option named "free form".  See the examples!,C(flush_handlers) makes Ansible run any handler tasks which have thus far been notified. Ansible inserts these tasks internally at certain points to implicitly trigger handler runs (after pre/post tasks, the final role execution, and the main tasks section of your plays).,C(refresh_inventory) (added in 2.0) forces the reload of the inventory, which in the case of dynamic inventory scripts means they will be re-executed. This is mainly useful when additional hosts are created and users wish to use them instead of using the `add_host` module.,C(noop) (added in 2.0) This literally does 'nothing'. It is mainly used internally and not recommended for general use.,C(clear_facts) (added in 2.1) causes the gathered facts for the hosts specified in the play's list of hosts to be cleared, including the fact cache.,C(clear_host_errors) (added in 2.1) clears the failed state (if any) from hosts specified in the play's list of hosts.,C(end_play) (added in 2.2) causes the play to end without failing the host.
        attribute :free_form
        validates :free_form, presence: true, inclusion: {:in=>[:noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play], :message=>"%{value} needs to be :noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play"}
      end
    end
  end
end
