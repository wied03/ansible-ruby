# frozen_string_literal: true

require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::ModuleCall do
  let(:builder) { Ansible::Ruby::DslBuilders::ModuleCall.new }

  let(:evaluated_builder) do
    evaluate
    builder
  end

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Gem', klass
  end

  context 'gem keyword' do
    let(:ruby) do
      <<-RUBY
      gem do
        src '/file1.conf'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Gem }
    it { is_expected.to have_attributes src: '/file1.conf' }
  end

  context 'fail module' do
    let(:ruby) do
      <<-RUBY
      ansible_fail do
        msg 'This is why we failed'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Fail }
    it { is_expected.to have_attributes msg: 'This is why we failed' }
  end

  context 'non free-form module' do
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

  context 'jinja' do
    let(:ruby) do
      <<-RUBY
            copy do
              src jinja('a_file')
              dest '/file2.conf'
            end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
    it do
      is_expected.to have_attributes src: Ansible::Ruby::Models::JinjaExpression.new('a_file'),
                                     dest: '/file2.conf'
    end
  end

  context 'free form' do
    context 'using free form name on non free-form module' do
      let(:ruby) do
        <<-RUBY
          copy 'howdy' do
            src '/file1.conf'
            dest '/file2.conf'
          end
        RUBY
      end

      it 'should raise an error' do
        expect {evaluate}.to raise_error "Can't use arguments [\"howdy\"] on this type of module"
      end
    end

    context 'no block' do
      let(:ruby) do
        <<-RUBY
          copy()
        RUBY
      end

      it 'should raise an error' do
        expect {evaluate}.to raise_error 'You must supply a block when using this type of module'
      end
    end

    context 'valid module' do
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

      context 'block, no jinja' do
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

      context 'jinja item in name' do
        let(:ruby) do
          <<-RUBY
          item = Ansible::Ruby::DslBuilders::JinjaItemNode.new

          command item
          RUBY
        end

        it { is_expected.to be_a Ansible::Ruby::Modules::Command }
        it { is_expected.to have_attributes free_form: Ansible::Ruby::Models::JinjaExpression.new('item') }
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

        it 'should raise an error' do
          expect {evaluate}.to raise_error 'Expected only 1 argument for this type of module'
        end
      end

      context 'free form not supplied' do
        let(:ruby) do
          <<-RUBY
          command do
            foo '/file1.conf'
          end
          RUBY
        end

        it 'should raise an error' do
          expect {evaluate}.to raise_error  'Expected 1 argument for this type of module'
        end
      end

      context 'argument not found' do
        let(:ruby) do
          <<-RUBY
          command 'ls /stuff' do
            bar '/file1.conf'
          end
          RUBY
        end

        it 'should raise an error' do
          expect {evaluate}.to raise_error <<~ERROR
            Unknown attribute 'bar' for Ansible::Ruby::Modules::Command.

            Valid attributes are: [:foo]
          ERROR
        end
      end
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

    it 'should raise an error' do
      expect {evaluate}.to raise_error "Validation failed: Dest can't be blank"
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

    it 'should raise an error' do
      expect {evaluate}.to raise_error 'Unknown module foo_copy'
    end
  end
end
