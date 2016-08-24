# See LICENSE.txt for license
require 'spec_helper'

describe TypeValidator do
  before { stub_const 'Ansible::Ruby::TypeValTestModel', klass }

  subject { instance }

  let(:klass) do
    Class.new(Ansible::Ruby::Models::Base) do
      attribute :foo
      validates :foo, presence: true, allow_nil: true, type: Integer
      attribute :bar
      validates :bar, type: TypeGeneric.new(Float)
      attribute :toodles
      validates :toodles, presence: true, type: TypeGeneric.new(Float)
    end
  end

  context 'attribute present' do
    let(:instance) { klass.new foo: 'howdy', toodles: 40.4 }

    it { is_expected.to_not be_valid }
    it { is_expected.to have_errors foo: 'Attribute foo expected to be a Integer but was a String' }
  end

  context 'multiple' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo
        validates :foo, presence: true, allow_nil: true, type: MultipleTypes.new(Float, Integer)
      end
    end

    let(:instance) { klass.new foo: foo_value }

    context 'passes' do
      [45.44, 33].each do |value|
        context value.class do
          let(:foo_value) { value }

          it { is_expected.to be_valid }
        end
      end
    end

    context 'fails' do
      let(:foo_value) { 'howdy' }

      it { is_expected.to_not be_valid }
      it { is_expected.to have_errors foo: 'Attribute foo expected to be one of [Float, Integer] but was a String' }
    end
  end

  context 'bar attribute not present' do
    let(:instance) { klass.new foo: 123, toodles: 40.4 }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: 123, toodles: 40.4 }
  end

  context 'nil value' do
    let(:instance) { klass.new foo: nil, toodles: 40.4 }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: nil, toodles: 40.4 }
  end

  context 'original name was not attr friendly' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo_bar, original_name: 'foo-bar'
      end
    end

    let(:instance) { klass.new foo_bar: 'howdy' }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash 'foo-bar' => 'howdy' }
  end

  context 'generic type' do
    context 'single value' do
      context 'correct type' do
        let(:instance) { klass.new foo: nil, bar: 45.44, toodles: 40.4 }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: nil, bar: 45.44, toodles: 40.4 }
      end

      context 'incorrect type' do
        let(:instance) { klass.new foo: nil, bar: 'howdy', toodles: 40.4 }

        it { is_expected.to_not be_valid }
      end

      context 'nil' do
        let(:instance) { klass.new foo: nil, bar: nil, toodles: 40.4 }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: nil, bar: nil, toodles: 40.4 }
      end

      context 'nil not allowed' do
        let(:instance) { klass.new foo: nil, bar: nil, toodles: nil }

        it { is_expected.to_not be_valid }
        it { is_expected.to have_errors toodles: "can't be blank" }
      end
    end

    context 'mult value' do
      context 'correct type' do
        let(:instance) { klass.new foo: nil, bar: [45.44], toodles: 40.4 }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: nil, bar: [45.44], toodles: 40.4 }
      end

      context 'empty array' do
        let(:instance) { klass.new foo: nil, bar: [], toodles: 40.4 }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: nil, bar: [], toodles: 40.4 }
      end

      context 'incorrect type' do
        let(:instance) { klass.new foo: nil, bar: ['howdy'], toodles: 40.4 }

        it { is_expected.to_not be_valid }
      end
    end
  end
end
