class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
        message: "%{value} can only be either fiction or non-fiction" }
end