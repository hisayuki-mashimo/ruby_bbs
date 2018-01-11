class Question < ApplicationRecord
    has_many :answers as: :group_id
end
