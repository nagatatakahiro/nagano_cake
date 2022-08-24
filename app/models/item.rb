class Item < ApplicationRecord
   has_one_attached :image
   belongs_to :genre
   def status_text
     if is_active == true
       "販売中"
     else
       "販売停止中"
     end
   end
end
