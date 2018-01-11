class Question < ApplicationRecord
    has_many :answers, as: :group
end
