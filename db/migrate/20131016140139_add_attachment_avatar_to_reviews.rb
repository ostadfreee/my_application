class AddAttachmentAvatarToReviews < ActiveRecord::Migration
  def self.up
    change_table :reviews do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :reviews, :avatar
  end
end
