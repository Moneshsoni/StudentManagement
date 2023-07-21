class RemoveMultiFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :perment_address
    remove_column :students, :contact
    remove_column :students, :DOB
  end
end
