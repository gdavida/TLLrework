class CreateToyTable < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name
      t.string :upc
      t.string :pic_url
      t.integer :pieces
      t.integer :box_id
      t.integer :age_group_id
    end
  end
end