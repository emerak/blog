class AddTitleAndContentToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :title, :jsonb
    add_column :posts, :content, :jsonb
  end
end
