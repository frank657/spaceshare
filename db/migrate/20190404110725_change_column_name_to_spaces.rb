class ChangeColumnNameToSpaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :full_addrress, :full_address
  end
end
