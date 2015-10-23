class CreateRatingjunctions < ActiveRecord::Migration
  def change
    create_table :ratingjunctions do |t|
      t.integer :rating_id
      t.integer :topic_id
      t.integer :post_id
      t.references :rating, index: true
      t.references :topic, index: true
      t.references :post, index: true
      t.references :rateable, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratingjunctions, :ratings
    add_foreign_key :ratingjunctions, :topics
    add_foreign_key :ratingjunctions, :posts
  end
end
