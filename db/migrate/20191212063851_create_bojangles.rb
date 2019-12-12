class CreateBojangles < ActiveRecord::Migration[5.0]
  def change
    create_table :bojangles do |t|
      t.string :name
      t.text :address
      t.string :spots

      t.timestamps
    end
  end
end
