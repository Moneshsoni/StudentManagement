class ChangeTypeOfNameInDemos < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        change_column :demos, :name, :string

      end
      dir.down do
        change_column :demos, :name, :text
      end
    end
  end
end
