shared_context 'case support' do
  let!(:dummy_package) { FactoryGirl.create(:case, :name => 'bootswitch') }
  let!(:next_package) { FactoryGirl.create(:case, :name => 'customizable_bootstrap') }
  let!(:last_package) { FactoryGirl.create(:case, :name => 'bootstrap_leather') }
  let!(:fresh_package) { FactoryGirl.create(:case, :name => 'bootstrap_pager').freshen }
  let!(:expired_package) { FactoryGirl.create(:case, :name => 'private_person', :updated_at => (Time.now - 14400).to_datetime) }
end