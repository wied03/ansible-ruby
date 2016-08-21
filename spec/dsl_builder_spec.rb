require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilder do
  let(:builder) { Ansible::Ruby::DslBuilder.new ruby }
  subject(:module_calls) { builder.evaluate }

  before do
    klass = Class.new(Ansible::Ruby::BasicUnit) do
      attribute :src, required: true
      attribute :dest, required: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

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

      it { is_expected.to have_attributes length: 1 }

      describe 'only module' do
        subject { module_calls[0] }

        it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
        it { is_expected.to have_attributes src: '/file1.conf', dest: '/file2.conf' }
      end
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
    context 'same' do
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

      it { is_expected.to have_attributes length: 2 }
      it { is_expected.to include Ansible::Ruby::Modules::Copy, Ansible::Ruby::Modules::Copy }
      it { is_expected.to include have_attributes(src: '/file1.conf', dest: '/file2.conf'),
                                  have_attributes(src: '/file3.conf', dest: '/file4.conf') }
    end

    context 'different' do
      before do
        klass = Class.new(Ansible::Ruby::BasicUnit) do
          attribute :attr1, required: true
        end
        stub_const 'Ansible::Ruby::Modules::Move', klass
      end

      let(:ruby) do
        <<-RUBY
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end

          move do
            attr1 '/file6.conf'
          end
        RUBY
      end

      it { is_expected.to have_attributes length: 2 }
      it { is_expected.to include Ansible::Ruby::Modules::Copy, Ansible::Ruby::Modules::Move }
      it { is_expected.to include have_attributes(src: '/file1.conf', dest: '/file2.conf'),
                                  have_attributes(attr1: '/file6.conf') }
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
