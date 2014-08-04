class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.string :title
      t.text :content
      t.float :position_x
      t.float :position_y
      t.references :category
      t.references :creator
      t.references :editor

      t.timestamps
    end
  end
end
