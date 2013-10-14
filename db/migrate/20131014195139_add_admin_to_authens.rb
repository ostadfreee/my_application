class AddAdminToAuthens < ActiveRecord::Migration
  def change
    add_column :authens, :admin, :boolean
  end
end
