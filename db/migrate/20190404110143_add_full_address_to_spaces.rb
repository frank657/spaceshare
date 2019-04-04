class AddFullAddressToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :full_addrress, :string
  end
end
