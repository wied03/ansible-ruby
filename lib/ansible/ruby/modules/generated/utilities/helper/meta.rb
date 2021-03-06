# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Meta tasks are a special kind of task which can influence Ansible internal execution or state. Prior to Ansible 2.0, the only meta option available was `flush_handlers`. As of 2.2, there are five meta tasks which can be used. Meta tasks can be used anywhere within your playbook.
      # This module is also supported for Windows targets.
      class Meta < Base
        # @return [:flush_handlers, :refresh_inventory, :noop, :clear_facts, :clear_host_errors, :end_play, :reset_connection] This module takes a free form command, as a string. There's not an actual option named "free form".  See the examples!,C(flush_handlers) makes Ansible run any handler tasks which have thus far been notified. Ansible inserts these tasks internally at certain points to implicitly trigger handler runs (after pre/post tasks, the final role execution, and the main tasks section of your plays).\r\n,C(refresh_inventory) (added in 2.0) forces the reload of the inventory, which in the case of dynamic inventory scripts means they will be re-executed. If the dynamic inventory script is using a cache, Ansible cannot know this and has no way of refreshing it (you can disable the cache or, if available for your specific inventory datasource (for es.: aws), you can use the an inventory plugin instead of an inventory script). This is mainly useful when additional hosts are created and users wish to use them instead of using the `add_host` module."\r\n,C(noop) (added in 2.0) This literally does 'nothing'. It is mainly used internally and not recommended for general use.,C(clear_facts) (added in 2.1) causes the gathered facts for the hosts specified in the play's list of hosts to be cleared, including the fact cache.,C(clear_host_errors) (added in 2.1) clears the failed state (if any) from hosts specified in the play's list of hosts.,C(end_play) (added in 2.2) causes the play to end without failing the host(s). Note that this affects all hosts.,C(reset_connection) (added in 2.3) interrupts a persistent connection (i.e. ssh + control persist)
        attribute :free_form
        validates :free_form, presence: true, expression_inclusion: {:in=>[:flush_handlers, :refresh_inventory, :noop, :clear_facts, :clear_host_errors, :end_play, :reset_connection], :message=>"%{value} needs to be :flush_handlers, :refresh_inventory, :noop, :clear_facts, :clear_host_errors, :end_play, :reset_connection"}
      end
    end
  end
end
