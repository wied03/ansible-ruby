require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilder do
  let(:builder) { Ansible::Ruby::DslBuilder.new code: ruby }
  subject { builder.evaluate }

  context 'found' do
    let(:ruby) do
      <<RUBY
    copy do
      src '/file1.conf'
      dest '/file2.conf'
    end
RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
  end

  context 'not found' do
    pending 'write this'
  end

  pending 'write it'
end
