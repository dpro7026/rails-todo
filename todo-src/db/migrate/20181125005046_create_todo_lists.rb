class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.boolean :completed
      t.string :task

      t.timestamps
    end
  end
end
