class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :home_ccy
      t.string :timestamps
    end
  end
end
