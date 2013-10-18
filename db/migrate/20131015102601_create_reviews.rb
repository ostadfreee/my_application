class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :auther
      t.text :content
      t.integer :rating
      t.references :product, index: true

      t.timestamps
    end
  end
end
