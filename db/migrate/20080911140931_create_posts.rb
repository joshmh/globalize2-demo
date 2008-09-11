class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.timestamps
    end

    create_table :post_translations do |t|
      t.string     :locale
      t.references :post
      t.string     :title
      t.text       :text
    end
  end

  def self.down
    drop_table :posts
  end
end
