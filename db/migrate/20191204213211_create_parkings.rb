class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
