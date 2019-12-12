class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :numbers
      t.references :parking, foreign_key: true

      t.timestamps
    end
  end
end
