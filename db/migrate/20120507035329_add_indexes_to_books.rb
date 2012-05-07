class AddIndexesToBooks < ActiveRecord::Migration
  def change
    add_index :books, :name
    add_index :books, :updated_at
  end
end
