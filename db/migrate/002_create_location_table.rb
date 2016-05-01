class CreateLocationTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :branch_name
      t.string :contact_name
    end
  end
end