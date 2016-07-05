class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :agent_id
      t.integer :status
      t.timestamps null: false
    end
  end
end
