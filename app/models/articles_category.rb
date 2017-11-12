class ArticlesCategory < ApplicationRecord
  belongs_to :article_id
  belongs_to :categories_id
end
