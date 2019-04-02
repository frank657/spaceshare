class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :open_id
      t.string :username
      t.boolean :manager, default: false

      t.timestamps
    end
  end
end
