class CreateBoxTable < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :status
      t.integer :age_group_id
      t.integer :location_id
    end
  end
end