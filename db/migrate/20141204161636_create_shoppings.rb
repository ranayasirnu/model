class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
