class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.boolean :approved, :default => false

      t.timestamps null: false
    end
  end
end
