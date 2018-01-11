class Article < ApplicationRecord
    belongs_to :user
    belongs_to :parent, class_name: 'Article', foreign_key: 'parent_id'
    belongs_to :group_id, polymorphic: true
    has_many   :children_articles, class_name: 'Article', foreign_key: 'parent_id'
end
