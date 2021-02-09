class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :user_rooms
  has_many :chats
  attachment :profile_image
  attachment :works_image

  enum job_category_id: {
      individual: 0,
      company: 1,
      designer: 2,
      stylist: 3,
      hairmake: 4,
      photographer: 5
    }
    
  validates :name,presence: true, uniqueness: true, length: { minimum: 1, maximum: 20 }

  validates :introduction, length: { maximum: 60 }
  
end
