class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.text :body, null: false
      t.belongs_to :hotel
      t.belongs_to :landmark

      t.timestamps null: false 
    end
  end
end
