class AddGroupAndGroupIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :group, :string
    add_column :articles, :group_id, :integer
  end
end
