class CreateArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :articles_categories do |t|
      t.references :article_id, foreign_key: true
      t.references :categories_id, foreign_key: true

      t.timestamps
    end
  end
end
