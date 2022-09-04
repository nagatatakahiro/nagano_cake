class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   def full_name
    first_name + last_name
   end
   def status_text
     if is_active == true
       "有効"
     else
       "無効"
     end
   end
end
