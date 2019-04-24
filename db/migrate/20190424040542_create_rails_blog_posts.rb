class CreateRailsBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :rails_blog_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
