class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
