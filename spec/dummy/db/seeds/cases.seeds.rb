after :loupes do
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
  expired = FactoryGirl.create(:case,
                     name: 'private_person',
                     title: 'Private Person'
  )
  yesterday = 1.day.ago.to_datetime.to_s
  Museum::Case.where(id: expired.id).update_all("updated_at='#{yesterday}', created_at='#{yesterday}'")
end