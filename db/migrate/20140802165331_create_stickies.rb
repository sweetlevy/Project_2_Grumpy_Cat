class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.string :title
      t.text :content
      t.references :user
      t.timestamps
    end
  end
end
