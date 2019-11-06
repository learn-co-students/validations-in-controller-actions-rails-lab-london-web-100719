class Post < ActiveRecord::Base
    validates :content, { length: { minimum: 100} }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, presence: true
end
