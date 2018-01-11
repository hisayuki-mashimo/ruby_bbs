class Chat < ApplicationRecord
    has_many :talks, as: group
end
