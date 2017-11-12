class Category < ApplicationRecord
  has_many :articles_categories
  has_many :articles, through: :articles_category

  validates :name, presence: true
end
