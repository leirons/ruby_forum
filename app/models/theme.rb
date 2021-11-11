class Theme < ApplicationRecord
  has_many :posts
  validates :name_of_theme,presence: TRUE, length: {minimum: 4}
end
