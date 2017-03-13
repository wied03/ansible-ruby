# frozen_string_literal: true
# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::Get_url do
  subject(:mod) do
    Ansible::Ruby::Modules::Get_url.new url: 'http://foobar',
                                        dest: 'some_file',
                                        headers: { foo: 123, abc: 456 }
  end

  describe '#to_h' do
    subject { mod.to_h }

    it do
      is_expected.to eq get_url: {
        url: 'http://foobar',
        dest: 'some_file',
        headers: 'foo:123,abc:456'
      }
    end
  end
end
