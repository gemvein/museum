FactoryGirl.create(:case,
                   name: 'bootswitch',
                   title: 'Bootswitch'
)
FactoryGirl.create(:case,
                   name: 'customizable_bootstrap',
                   title: 'Customizable Bootstrap'
)
FactoryGirl.create(:case,
                   name: 'bootstrap_leather',
                   title: 'Bootstrap Leather'
)
FactoryGirl.create(:case,
                   name: 'bootstrap_pager',
                   title: 'Bootstrap Pager'
).freshen
FactoryGirl.create(:case,
                   name: 'private_person',
                   title: 'Private Person',
                   updated_at: (Time.now - 14400).to_datetime
)