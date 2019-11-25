class CreateBuisnesses < ActiveRecord::Migration[5.0]
  def change
    create_table :buisnesses do |t|
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
