class AddAvailableSpotsToSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :available_spots, :integer
  end
end
