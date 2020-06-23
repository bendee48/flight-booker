class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :start_airport, foreign_key: { to_table: :airports }, index: true 
      t.references :finish_airport, foreign_key: { to_table: :airports }, index: true 
      t.datetime :start_time
      t.time :duration

      t.timestamps
    end
  end
end
