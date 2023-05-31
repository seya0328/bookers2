class Book < ApplicationRecord
  belogns_to :user
  has_one_attached :image
end
