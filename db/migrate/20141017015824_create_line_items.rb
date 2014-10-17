class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :leg
      t.date :value_date
      t.string :description
      t.string :ccy
      t.float :ccy_amount
      t.float :fx
      t.timestamps

    end
  end
end
