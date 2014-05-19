class CreateMuseumCaseDetails < ActiveRecord::Migration
  def change
    create_table :museum_case_details do |t|
      t.integer :museum_case_id
      t.integer :museum_loupe_id
      t.string  :key
      t.text    :value
      t.timestamps
    end
    add_index :museum_case_details, [:museum_loupe_id, :museum_case_id, :key], name: :key, unique: true
  end
end