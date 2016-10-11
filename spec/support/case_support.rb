shared_context 'case support' do
  let!(:dummy_package) { Museum::Case.find_by_name('bootswitch') }
  let!(:next_package) { Museum::Case.find_by_name('customizable_bootstrap') }
  let!(:last_package) { Museum::Case.find_by_name('bootstrap_leather') }
  let!(:fresh_package) { Museum::Case.find_by_name('bootstrap_pager').freshen }
  let!(:expired_package) { Museum::Case.find_by_name('private_person') }
end