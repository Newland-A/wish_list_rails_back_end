class WishItem < ApplicationRecord
  belongs_to :wish_list

  validates :name, :color, :price, presence: true

  validates :description, :presence => {message: "Description content cannot be blank."}, :length => { :minimum => 10, message: "Message is too short."}, :on => :create
end

# Do something like this to randomize the items
# def randomize
#   WishItem.all.each do |wl|
#     wl.wish_list_id=WishList.all.sample 
#   end
# end
