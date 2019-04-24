class CreateBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.string :name
      t.text :comment
      t.integer :post_id

      t.timestamps
    end
  end
end
