class Bubbletea < ApplicationRecord
  validates :name, presence: true
  validates :flavour, presence: true
  validates :bubbles, presence: true
  validates :sugar, presence: true
  validates :ice, presence: true
end
