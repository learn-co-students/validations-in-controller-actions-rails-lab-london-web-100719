class Author < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false
  validates :email, uniqueness: true
end
