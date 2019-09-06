require 'spec_helper'

describe 'tryme' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) do
        os_facts.merge(
          'fqdn' => 'dorothy.puppetlabs.vm',
        )
      end

      it { is_expected.to compile }
      it { pp catalogue.resources }
      it { is_expected.to contain_notify("#{facts['fqdn']}") }
    end
  end
end
