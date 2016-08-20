require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilder do
  let(:builder) { Ansible::Ruby::DslBuilder.new ruby }
  subject { builder.evaluate }

  context 'single module' do
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

      subject { lambda { builder.evaluate } }

      it { is_expected.to raise_error 'Unknown module foo_copy at line 2!' }
    end
  end

  context 'multiple modules' do
    context 'found' do
      let(:ruby) do
        <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end

      copy do
        src '/file3.conf'
        dest '/file4.conf'
      end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
      it { is_expected.to have_attributes src: '/file1.conf', dest: '/file2.conf' }
    end

    context 'not found' do
      let(:ruby) do
        <<-RUBY
      # comments
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      foo_copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
        RUBY
      end

      subject { lambda { builder.evaluate } }

      it { is_expected.to raise_error 'Unknown module foo_copy at line 6!' }
    end
  end
end
