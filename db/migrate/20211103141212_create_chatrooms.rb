class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.references :user_senior, index: true, foreign_key: { to_table: :users }
      t.references :user_junior, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
