class AddColumnsToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :address, :string
    add_column :students, :contact, :Integer
  end
end
