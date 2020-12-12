class WishList < ApplicationRecord
  has_many :wish_items, dependent: :destroy
  accepts_nested_attributes_for :wish_items, allow_destroy: true, reject_if: :all_blank
end
