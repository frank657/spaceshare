class AddFieldsToSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :wifi, :boolean, default: false
    add_column :spaces, :sofa_area, :boolean, default: false
    add_column :spaces, :coffee, :boolean, default: false
    add_column :spaces, :beer, :boolean, default: false
    add_column :spaces, :purified_air, :boolean, default: false
  end
end
