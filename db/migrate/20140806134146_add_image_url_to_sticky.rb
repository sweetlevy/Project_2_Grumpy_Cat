class AddImageUrlToSticky < ActiveRecord::Migration
  def change
    add_column :stickies, :image_url, :string
  end
end
