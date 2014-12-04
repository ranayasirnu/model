class CreateBeauties < ActiveRecord::Migration
  def change
    create_table :beauties do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
