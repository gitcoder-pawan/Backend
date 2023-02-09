class Comment < ApplicationRecord
    belongs_to :article
    validates :username, presence: true
    validates :comment, length: {maximum:50}
end