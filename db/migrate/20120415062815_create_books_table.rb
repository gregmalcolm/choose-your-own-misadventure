class CreateBooksTable < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.column :name, :string
      t.timestamps
    end
  end

  def down
    drop_table :books
  end
end
