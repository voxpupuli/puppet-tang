# frozen_string_literal: true

require 'spec_helper'

describe 'tang' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('tang') }
      it { is_expected.to contain_class('tang::install') }
      it { is_expected.to contain_class('tang::dropin') }
      it { is_expected.to contain_class('tang::service') }
      it { is_expected.to contain_package('tang') }
      it { is_expected.to contain_systemd__dropin_file('override.conf') }
      it { is_expected.to contain_service('tang.service') }
    end
  end
end
