class RenameColumnInStudent < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :address, :perment_address
  end
end
