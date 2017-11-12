class Article < ApplicationRecord
   belongs_to :user
   has_many :articles_categories
   has_many :categories, through: :articles_categories
   validates :title, presence: true
   validates :user_id, presence: true
end
