class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.datetime :released_at
      t.decimal :cost
      t.string :image

      t.timestamps
    end
  end
end
