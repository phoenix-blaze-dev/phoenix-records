class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :artist, foreign_key: true
      t.string :title
      t.string :discogsid
      t.integer :year
      t.references :media_grading, foreign_key: true
      t.references :sleeve_grading, foreign_key: true

      t.timestamps
    end
  end
end
