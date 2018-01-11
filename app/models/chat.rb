class Chat < ApplicationRecord
    has_many :talks as: group_id
end
