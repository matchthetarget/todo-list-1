class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
