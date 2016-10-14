# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::Docker_container do
  subject(:mod) do
    Ansible::Ruby::Modules::Docker_container.new name: 'the_container',
                                                 image: 'centos:7',
                                                 volumes: volumes
  end

  describe '#to_h' do
    subject { mod.to_h }

    context 'no flags' do
      let(:volumes) do
        {
          '/stuff' => '/howdy'
        }
      end

      it do
        is_expected.to eq docker_container: {
          name: 'the_container',
          image: 'centos:7',
          volumes: ['/stuff:/howdy']
        }
      end
    end

    context 'flags' do
      let(:volumes) do
        {
          '/stuff' => {
            flags: 'Z',
            path: '/howdy'
          }
        }
      end

      it do
        is_expected.to eq docker_container: {
          name: 'the_container',
          image: 'centos:7',
          volumes: ['/stuff:/howdy:Z']
        }
      end
    end
  end
end
