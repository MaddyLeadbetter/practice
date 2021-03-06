class User < ApplicationRecord
  validates :name, presence: true,
                    length: { minimum: 2 }
  validates :email, presence: true,
                    length: { minimum: 5 }
end
