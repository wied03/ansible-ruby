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
    it { is_expected.to have_attributes src: '/file1.conf', dest: '/file2.conf' }
  end

  context 'not found' do
    let(:ruby) do
      <<RUBY
    # comments
    foo_copy do
      src '/file1.conf'
      dest '/file2.conf'
    end
RUBY
    end

    subject { lambda { builder.evaluate } }

    it { is_expected.to raise_error 'Unknown module foo_copy at line 2!' }
  end

  pending 'write it'
end
