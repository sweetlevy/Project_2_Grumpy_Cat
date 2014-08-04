class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.references :board
      t.references :user
      t.string :access
      
      t.timestamps
    end
  end
end
