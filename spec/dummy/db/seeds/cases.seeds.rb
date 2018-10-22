after :loupes do
  FactoryBot.create(:case,
                     name: 'bootswitch',
                     title: 'Bootswitch'
  )
  FactoryBot.create(:case,
                     name: 'customizable_bootstrap',
                     title: 'Customizable Bootstrap'
  )
  FactoryBot.create(:case,
                     name: 'bootstrap_leather',
                     title: 'Bootstrap Leather'
  )
  FactoryBot.create(:case,
                     name: 'bootstrap_pager',
                     title: 'Bootstrap Pager'
  ).freshen
  expired = FactoryBot.create(:case,
                     name: 'private_person',
                     title: 'Private Person'
  )
  yesterday = 1.day.ago.to_datetime.to_s
  Museum::Case.where(id: expired.id).update_all("updated_at='#{yesterday}', created_at='#{yesterday}'")
end