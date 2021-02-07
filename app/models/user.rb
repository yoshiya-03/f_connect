class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  
  enum job_category_id: {
      individual: 0,
      company: 1,
      designer: 2,
      stylist: 3,
      hairmake: 4,
      photographer: 5
    }
end
