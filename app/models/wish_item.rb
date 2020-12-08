class WishItem < ApplicationRecord
  belongs_to :wish_list
end
# Do something like this to randomize the items
# def randomize
#   WishItem.all.each do |wl|
#     wl.wish_list_id=WishList.all.sample 
#   end
# end
