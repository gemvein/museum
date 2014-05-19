class CreateMuseumCases < ActiveRecord::Migration
  def change
    create_table :museum_cases do |t|
      t.string    :name
      t.string    :title
      t.text      :sort

      t.timestamps
    end
    add_index :museum_cases, :name, unique: true
  end
end