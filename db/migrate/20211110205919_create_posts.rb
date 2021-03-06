class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :theme, null: false, foreign_key: true
      t.string :name_of_post
      t.text :body

      t.timestamps
    end
  end
end
