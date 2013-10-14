class AddNameToAuthens < ActiveRecord::Migration
  def change
    add_column :authens, :name, :string
  end
end
