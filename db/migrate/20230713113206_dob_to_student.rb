class DobToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :DOB, :date
  end
end
