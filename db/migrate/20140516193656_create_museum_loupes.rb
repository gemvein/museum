class CreateMuseumLoupes < ActiveRecord::Migration[5.2]
  def change
    create_table :museum_loupes do |t|
      t.string  :title
      t.string  :slug
      t.string  :uri_template
      t.string  :data_format

      t.timestamps
    end
    add_index :museum_loupes, :slug, unique: true
  end
end