require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::ModuleCall do
  let(:builder) { Ansible::Ruby::DslBuilders::ModuleCall.new }

  def _evaluate
    builder._evaluate ruby
  end

  subject { _evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Models::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
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

  context 'using free form name on non free-form module' do
    let(:ruby) do
      <<-RUBY
      copy 'howdy' do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    subject { -> { _evaluate } }

    it { is_expected.to raise_error "Can't use arguments [\"howdy\"] on this type of module at line 1!" }
  end

  context 'no block' do
    let(:ruby) do
      <<-RUBY
      copy()
      RUBY
    end

    subject { -> { _evaluate } }

    it { is_expected.to raise_error 'You must supply a block when using this type of module at line 1!' }
  end

  context 'free form module' do
    before do
      klass_free_form = Class.new(Ansible::Ruby::Models::Base) do
        attribute :free_form
        validates :free_form, presence: true

        attribute :foo
      end
      stub_const 'Ansible::Ruby::Modules::Command', klass_free_form
      # simulate monkey patching existing
      klass_free_form.class_eval do
        include Ansible::Ruby::Modules::FreeForm
      end
    end

    context 'valid' do
      let(:ruby) do
        <<-RUBY
        command 'ls /stuff' do
          foo '/file1.conf'
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Modules::Command }
      it { is_expected.to have_attributes free_form: 'ls /stuff', foo: '/file1.conf' }
    end

    context 'no block' do
      let(:ruby) do
        <<-RUBY
command 'ls /stuff'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Modules::Command }
      it { is_expected.to have_attributes free_form: 'ls /stuff' }
    end

    context 'too many args' do
      let(:ruby) do
        <<-RUBY
        command 'ls /stuff', 'more' do
          foo '/file1.conf'
        end
        RUBY
      end

      subject { -> { _evaluate } }

      it { is_expected.to raise_error 'Expected only 1 argument for this type of module at line 1!' }
    end

    context 'free form not supplied' do
      let(:ruby) do
        <<-RUBY
        command do
          foo '/file1.conf'
        end
        RUBY
      end

      subject { -> { _evaluate } }

      it { is_expected.to raise_error 'Expected 1 argument for this type of module at line 1!' }
    end
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

    subject { -> { _evaluate } }

    it { is_expected.to raise_error "Validation failed: Dest can't be blank at line 6!" }
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

    subject { -> { _evaluate } }

    it { is_expected.to raise_error 'Unknown module foo_copy at line 2!' }
  end
end
