class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.references :creator
      t.references :editor

      t.timestamps
    end
  end
end
