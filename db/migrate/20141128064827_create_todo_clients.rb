class CreateTodoClients < ActiveRecord::Migration
  def change
    create_table :todo_clients do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
