class AddClomunsToAllTables < ActiveRecord::Migration
  def change
    tables = ActiveRecord::Base.connection.tables - ["schema_migrations"]
    tables.each do |table|
      add_column table, :description, :string
      add_column table, :image_url, :string
    end
  end
end
