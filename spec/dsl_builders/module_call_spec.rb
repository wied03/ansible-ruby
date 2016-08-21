require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::ModuleCall do
  let(:builder) { Ansible::Ruby::DslBuilders::ModuleCall.new }

  def evaluate
    builder.evaluate ruby
  end

  subject(:module_calls) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::BasicUnit) do
      attribute :src, required: true
      attribute :dest, required: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'found' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
    it { is_expected.to have_attributes src: '/file1.conf', dest: '/file2.conf' }
  end

  context 'attribute missing' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end

      copy do
        src '/file1.conf'
      end
      RUBY
    end

    subject { lambda { evaluate } }

    it { is_expected.to raise_error 'Attribute dest is required at line 6!' }
  end

  context 'not found' do
    let(:ruby) do
      <<-RUBY
      # comments
      foo_copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    subject { lambda { evaluate } }

    it { is_expected.to raise_error 'Unknown module foo_copy at line 2!' }
  end
end