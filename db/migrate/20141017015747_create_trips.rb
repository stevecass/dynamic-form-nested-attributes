class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :user
      t.string :name
      t.timestamps
    end
  end
end
