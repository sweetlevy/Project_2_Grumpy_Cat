class Categories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :board
      t.references :sticky
      t.string     :title

      t.timestamps
    end
  end
end
