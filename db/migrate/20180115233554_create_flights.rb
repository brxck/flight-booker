class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :origin, foreign_key: true
      t.references :destination, foreign_key: true
      t.time :duration

      t.timestamps
    end
  end
end
