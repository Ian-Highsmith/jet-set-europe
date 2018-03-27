class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name, null: false
      t.string :photo_url, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.belongs_to :country
    end
  end
end
