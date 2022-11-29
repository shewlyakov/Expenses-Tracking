class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.string :name, null: false
      t.float :sum, null: false
      t.string :description

      t.timestamps
    end
  end
end
