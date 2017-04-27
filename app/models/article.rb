class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :body, presence: true,
                    length: { minimum: 10 }

  has_many :article_categories
  has_many :categories, through: :article_categories
  
  has_many :comments
end
