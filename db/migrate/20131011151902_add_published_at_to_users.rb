class AddPublishedAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :published_at, :Date
  end
end
