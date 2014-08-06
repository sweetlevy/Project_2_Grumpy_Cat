class AddLinkUrlToStickies < ActiveRecord::Migration
  def change
    add_column :stickies, :link_url, :string
  end
end
