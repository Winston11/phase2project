class Review < ApplicationRecord
    belongs_to :user
    belongs_to :streaming_service
end
