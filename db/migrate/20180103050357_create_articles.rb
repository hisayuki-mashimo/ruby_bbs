class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :parent_id
      t.string :title
      t.text :body
      t.timestamp :created_at

      t.timestamps
    end
  end
end
