class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :photo_url, null: false
      t.string :description
    end
  end
end
