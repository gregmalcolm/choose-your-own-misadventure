class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books, :force=>true do |t|
      t.references :user
      t.string     :name
      t.timestamps
    end
  end
end
