# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'tang class' do
  context 'default parameters' do
    it_behaves_like 'an idempotent resource' do
      let(:manifest) do
        <<-PUPPET
        include tang
        PUPPET
      end
    end

    describe package('tang') do
      it { is_expected.to be_installed }
    end

    describe service('tangd.socket') do
      it { is_expected.to be_running }
      it { is_expected.to be_enabled }
    end

    describe port(7500) do
      it { is_expected.to be_listening }
    end

    describe command('curl --silent http://127.0.0.1:7500/adv') do
      its(:stdout) { is_expected.to match %r{payload} }
      its(:exit_status) { is_expected.to eq 0 }
    end
  end
end
