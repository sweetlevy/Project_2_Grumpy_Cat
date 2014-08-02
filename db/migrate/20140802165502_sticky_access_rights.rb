class StickyAccessRights < ActiveRecord::Migration
  def change
    create_table :sticky_access_rights do |t|
      t.references :user
      t.references :sticky
      t.string     :access

      t.timestamps
    end
  end
end
