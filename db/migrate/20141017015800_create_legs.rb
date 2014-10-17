class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.references :trip
      t.references :location
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
