class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.text :lot
      t.string :license
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
