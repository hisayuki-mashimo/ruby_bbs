class Article < ApplicationRecord
    belongs_to :user
    belongs_to :parent, class_name: 'Article', foreign_key: 'parent_id'
    has_many   :children_articles, class_name: 'Article', foreign_key: 'parent_id'
end
