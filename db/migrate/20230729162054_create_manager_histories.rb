class CreateManagerHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :manager_histories do |t|
      t.date :start_time
      # t.manager :references
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
