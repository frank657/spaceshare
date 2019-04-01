class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :district
      t.string :address_details
      t.string :amenities
      t.string :picture
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
